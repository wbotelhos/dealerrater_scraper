# frozen_string_literal: true

module Parser
  module Html
    module_function

    require 'nokogiri'

    require_relative 'url'

    def fetch(pages:)
      pages.times.map do |page|
        Nokogiri::HTML(File.open("spec/fixtures/page#{page + 1}.html").read)
      end
    end
  end
end
