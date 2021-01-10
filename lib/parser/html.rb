# frozen_string_literal: true

module Parser
  module Html
    module_function

    require 'nokogiri'

    require_relative 'url'

    def fetch(pages:, requester:)
      pages.times.map do |page|
        page_number = page + 1

        ::Logger.log("[Parser::Html#fetch] Parsing page #{page_number}")

        Nokogiri::HTML(requester.open(Parser::Url.for(page: page_number), headers))
      end
    end

    def headers
      { 'User-Agent' => 'Chrome/87.0.4280.141' }
    end
  end
end
