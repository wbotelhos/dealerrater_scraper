# frozen_string_literal: true

module Parser
  module Url
    module_function

    DOMAIN = 'https://www.dealerrater.com'
    SOURCE = 'dealer'
    SLUG   = 'McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685'

    def for(page:)
      "#{DOMAIN}/#{SOURCE}/#{SLUG}/page#{page}"
    end
  end
end
