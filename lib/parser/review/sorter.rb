# frozen_string_literal: true

module Parser
  module Review
    module Sorter
      module_function

      def call(rated_reviews)
        rated_reviews.sort_by do |review|
          [
            review.dig(:ratings, :recommend),
            review.dig(:ratings, :dealership_rating),
            review.dig(:ratings, :features_ratings),
            review.dig(:ratings, :content),
            review.dig(:ratings, :employees_ratings),
          ]
        end
      end
    end
  end
end
