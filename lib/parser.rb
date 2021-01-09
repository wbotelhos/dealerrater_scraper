# frozen_string_literal: true

module Parser
  module_function

  require 'parser/html'
  require 'parser/url'

  def call
    html = Parser::Html.fetch(page: 1)
  end
end
