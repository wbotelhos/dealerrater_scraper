# frozen_string_literal: true

module Parser
  module Review
    module Calculator
      module_function

      def call(json)
        json.map do |item|
          item.tap { item[:ratings] = rating_by_area(item) }
        end
      end

      def rating_by_area(json)
        {
          content:           rating_for_content(json),
          dealership_rating: rating_for_dealership_rating(json),
          employees_ratings: rating_for_employees_ratings(json),
          features_ratings:  rating_for_features_ratings(json),
          recommend:         rating_for_recommend(json),
        }
      end

      def rating_for_content(json)
        bad_words  = %w[bad]
        good_words = %w[good nice]

        json[:content].split(' ').inject(0) do |total, word|
          total += 1 if good_words.include?(word)
          total -= 1 if bad_words.include?(word)

          total
        end
      end

      def rating_for_dealership_rating(json)
        json[:dealership_rating]
      end

      def rating_for_employees_ratings(json)
        json[:employees_ratings].sum { |item| item[:rating] }
      end

      def rating_for_features_ratings(json)
        json[:features_ratings].values.sum
      end

      def rating_for_recommend(json)
        json[:recommend] ? 1 : 0
      end
    end
  end
end
