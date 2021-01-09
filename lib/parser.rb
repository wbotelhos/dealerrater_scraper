# frozen_string_literal: true

module Parser
  module_function

  require_relative 'parser/html'
  require_relative 'parser/review'

  def call(pages:)
    Parser::Html.fetch(pages: pages)
    .then(&Parser::Review.method(:list))
    .then(&Parser::Review::Calculator.method(:call))
    .then(&Parser::Review::Sorter.method(:call))
    .then(&Parser::Review::Best.method(:call))
  end
end
