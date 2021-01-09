# frozen_string_literal: true

module Parser
  module_function

  require_relative 'parser/html'
  require_relative 'parser/sanitizer'
  require_relative 'parser/url'

  def call
    html = Parser::Html.fetch(page: 1)
  end
end
