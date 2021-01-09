# frozen_string_literal: true

RSpec.describe Parser::Review, '.dealership_rating' do
  let!(:review) { review_content }

  it 'returns the rating' do
    expect(described_class.dealership_rating(review: review)).to be(5.0)
  end
end
