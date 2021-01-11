# frozen_string_literal: true

module Parser
  module Html
    module_function

    require 'nokogiri'

    require_relative 'url'

    def fetch(pages:, requester:, slug:, source:)
      pages.times.map do |index|
        url = Parser::Url.for(page: index + 1, slug: slug, source: source)

        ::Logger.log("[Parser::Html#fetch] Fetching #{url}")

        Nokogiri::HTML(requester.open(url, headers))
      end
    end

    def headers
      { 'User-Agent' => 'Chrome/87.0.4280.141' }
    end
  end
end
