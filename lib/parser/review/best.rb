# frozen_string_literal: true

module Parser
  module Review
    module Best
      module_function

      def call(reviews, display:)
        reviews.last(display).reverse
      end
    end
  end
end
