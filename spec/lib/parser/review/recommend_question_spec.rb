# frozen_string_literal: true

RSpec.describe Parser::Review, '.recommend?' do
  let!(:review) { review_content }

  it 'returns true when user recommends the source' do
    expect(described_class.recommend?(review: review)).to be(true)
  end
end
