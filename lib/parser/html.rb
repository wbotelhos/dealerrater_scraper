# frozen_string_literal: true

module Parser
  module Html
    module_function

    require 'nokogiri'

    require_relative 'url'

    def fetch(pages:, requester:)
      pages.times.map do |page|
        Nokogiri::HTML(requester.open(Parser::Url.for(page: page + 1), headers))
      end
    end

    def headers
      { 'User-Agent' => 'Chrome/87.0.4280.141' }
    end
  end
end
