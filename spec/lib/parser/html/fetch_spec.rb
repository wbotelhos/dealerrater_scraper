# frozen_string_literal: true

require 'support/requester'

RSpec.describe Parser::Html, '#fetch' do
  let!(:pages) { 2 }

  it 'returns the html wrapped by nokogiri for the given quantity of pages' do
    expect(described_class.fetch(pages: pages, requester: Requester).map(&:class)).to eq([
      Nokogiri::HTML::Document,
      Nokogiri::HTML::Document
    ])
  end
end
