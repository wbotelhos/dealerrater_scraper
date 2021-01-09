# frozen_string_literal: true

module Parser
  module Review
    module Best
      module_function

      def call(reviews)
        reviews.last(3).reverse
      end
    end
  end
end
