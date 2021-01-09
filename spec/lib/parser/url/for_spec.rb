# frozen_string_literal: true

RSpec.describe Parser::Url, '.for' do
  let!(:page) { 1 }

  it 'builds the url for the given page' do
    expect(described_class.for(page: page)).to eq(
      "https://www.dealerrater.com/dealer/McKaig-Chevrolet-Buick-A-Dealer-For-The-People-dealer-reviews-23685/page1"
    )
  end
end
