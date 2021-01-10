# frozen_string_literal: true

module Requester
  module_function

  def open(url, _headers)
    page = url.split('/').last

    File.open("spec/fixtures/#{page}.html").read
  end
end
