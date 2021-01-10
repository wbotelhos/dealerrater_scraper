# frozen_string_literal: true

module Parser
  module_function

  require 'open-uri'

  require_relative 'parser/html'
  require_relative 'parser/review'

  def call(pages:, requester: URI)
    Parser::Html.fetch(pages: pages, requester: requester)
    .then(&Parser::Review.method(:list))
    .then(&Parser::Review::Calculator.method(:call))
    .then(&Parser::Review::Sorter.method(:call))
    .then(&Parser::Review::Best.method(:call))
  end
end
