# frozen_string_literal: true

module Parser
  module Review
    module Printer
      module_function

      require_relative '../../icon'

      def call(reviews, description_legth: 80)
        output = reviews.map.with_index do |review, index|
          output = <<~HEREDOC


          ----- #{medal(position: index)} -----

          #{review[:date]}
          #{dealership_rating(review: review)}

          #{Icon.speak}  #{review[:username]} #{recommend(review: review)}:

            "#{review[:title]}"

          #{Icon.description} Description:

            "#{content(review[:content], description_legth)}"

          #{Icon.employees} Employees worked with:

          #{employees_ratings(review: review)}
          HEREDOC
        end

        ::Logger.log(output.join)
      end

      def content(text, max_length)
        result = []
        total  = 0
        words  = text.split

        words.each do |word|
          result << word

          total += word.size

          next if total < max_length

          result << "\n "

          total = 0
        end

        result.join(' ')
      end

      def dealership_rating(review:)
        rating_to_stars(review[:dealership_rating])
      end

      def employees_ratings(review:)
        review[:employees_ratings].map do |employee|
          [
            "  #{employee[:name]}",
            "  #{employee[:rating]} | #{rating_to_stars(employee[:rating])}",
          ].join("\n")
        end.join("\n\n")
      end

      def medal(position:)
        [Icon.medal_first, Icon.medal_second, Icon.medal_third][position]
      end

      def rating_to_stars(value)
        star, half = value.to_s.split('.')

        [].tap do |stars|
          star.to_i.times { stars << Icon.star }

          stars << Icon.half_star if half != '0'
        end.join(' ')
      end

      def recommend(review:)
        review[:recommend] ? "recommends #{Icon.thumb_up}" : "does not recommend #{Icon.thumb_down}"
      end
    end
  end
end
