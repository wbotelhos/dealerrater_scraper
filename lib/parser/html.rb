# frozen_string_literal: true

module Parser
  module Html
    module_function

    require 'nokogiri'

    def fetch(page:)
      Nokogiri::HTML(File.open('spec/fixtures/page.html').read)
    end
  end
end
