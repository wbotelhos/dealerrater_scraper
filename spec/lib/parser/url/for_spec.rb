# frozen_string_literal: true

RSpec.describe Parser::Url, '.for' do
  let!(:page) { 1 }

  it 'builds the url for the given page' do
    expect(described_class.for(page: page, slug: 'slug', source: 'source')).to eq(
      'https://www.dealerrater.com/source/slug/page1'
    )
  end
end
