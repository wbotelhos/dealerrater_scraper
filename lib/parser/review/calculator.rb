# frozen_string_literal: true

module Parser
  module Review
    module Calculator
      module_function

      def call(reviews)
        reviews.map do |review|
          review.tap { review[:ratings] = rating_by_area(review) }
        end
      end

      def rating_by_area(review)
        {
          content:           rating_for_content(review),
          dealership_rating: rating_for_dealership_rating(review),
          employees_ratings: rating_for_employees_ratings(review),
          features_ratings:  rating_for_features_ratings(review),
          recommend:         rating_for_recommend(review),
        }
      end

      def rating_for_content(review)
        bad_words  = ENV['BAD_WORDS'].split(',')
        good_words = ENV['GOOD_WORDS'].split(',')

        review[:content].split(' ').inject(0) do |total, word|
          total += 1 if good_words.include?(word)
          total -= 1 if bad_words.include?(word)

          total
        end
      end

      def rating_for_dealership_rating(review)
        review[:dealership_rating]
      end

      def rating_for_employees_ratings(review)
        review[:employees_ratings].sum { |item| item[:rating].to_f }
      end

      def rating_for_features_ratings(review)
        review[:features_ratings].values.sum
      end

      def rating_for_recommend(review)
        review[:recommend] ? 1 : 0
      end
    end
  end
end
