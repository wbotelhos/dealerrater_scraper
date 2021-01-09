# frozen_string_literal: true

module Parser
  module_function

  require 'parser/html'
  def call
    html = Parser::Html.fetch(page: 1)
  end
end
