# frozen_string_literal: true

module Parser
  module_function

  require_relative 'parser/html'
  require_relative 'parser/review'

  def call
    Parser::Html.fetch(page: 1)
    .then(&Parser::Review.method(:list))
  end
end
