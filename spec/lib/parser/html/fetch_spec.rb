# frozen_string_literal: true

RSpec.describe Parser::Html, '#fetch' do
  let!(:page) { 1 }

  it 'returns the html wrapped by nokogiri' do
    expect(described_class.fetch(page: page).class).to eq(Nokogiri::HTML::Document)
  end
end
