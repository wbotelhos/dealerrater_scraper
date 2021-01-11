# frozen_string_literal: true

module Parser
  module Url
    module_function

    def for(page:, slug:, source:)
      "#{ENV['DOMAIN']}/#{source}/#{slug}/page#{page}"
    end
  end
end
