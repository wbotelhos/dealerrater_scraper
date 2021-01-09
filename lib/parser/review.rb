# frozen_string_literal: true

module Parser
  module Review
    module_function

    require_relative 'review/calculator'
    require_relative 'review/sorter'
    require_relative 'sanitizer'

    def content(review:)
      Parser::Sanitizer.call(review.css('.review-content').text)
    end

    def convert_rating(value)
      value =~ /\srating-(\d)(\d)/

      "#{$1}.#{$2}".to_f
    end

    def date(review:)
      review.css('.review-date > div:first').text
    end

    def dealership_rating(review:)
      convert_rating(review.css('.dealership-rating > div:first').attr('class').value)
    end

    def employees_ratings(review:)
      [].tap do |result|
        review.css('.review-employee').each do |employee|
          result << {
            name:   employee.css('a').text.strip,
            rating: convert_rating(employee.css('.rating-static').attr('class').value),
          }
        end
      end
    end

    def features_ratings(review:)
      {}.tap do |result|
        review.css('.review-ratings-all .tr')[0...-1].each do |line|
          column = line.css('.td')
          name   = column.first.text

          result[name] = convert_rating(column.last.attr('class'))
        end
      end
    end

    def list(page)
      page.css('.review-entry').map do |review|
        {
          content:           content(review: review),
          date:              date(review: review),
          dealership_rating: dealership_rating(review: review),
          employees_ratings: employees_ratings(review: review),
          features_ratings:  features_ratings(review: review),
          recommend:         recommend?(review: review),
          title:             title(review: review),
          username:          username(review: review),
        }
      end
    end

    def recommend?(review:)
      value = Parser::Sanitizer.call(review.css('.review-ratings-all .td:last').text)

      { 'Yes' => true }[value] || false
    end

    def title(review:)
      Parser::Sanitizer.call(review.css('h3').text, remove: '"')
    end

    def username(review:)
      Parser::Sanitizer.call(review.css('span').first.text, remove: /^- /)
    end
  end
end
