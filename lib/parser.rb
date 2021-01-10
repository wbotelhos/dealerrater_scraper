# frozen_string_literal: true

module Parser
  module_function

  require 'open-uri'

  require_relative 'logger'
  require_relative 'parser/html'
  require_relative 'parser/review'

  def call(display: 3, pages: 5, requester: URI)
    Parser::Html.fetch(pages: pages, requester: requester)
    .then(&Parser::Review.method(:list))
    .then(&Parser::Review::Calculator.method(:call))
    .then(&Parser::Review::Sorter.method(:call))
    .then { |data| Parser::Review::Best.call(data, display: display) }
    .then(&Parser::Review::Printer.method(:call))
  end
end
