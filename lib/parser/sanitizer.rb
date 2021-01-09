# frozen_string_literal: true

module Parser
  module Sanitizer
    module_function

    def call(text, remove: nil)
      common = text.strip.gsub(/\s{2,}/, '')

      return common unless remove

      common.gsub(remove, '')
    end
  end
end
