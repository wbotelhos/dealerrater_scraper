# frozen_string_literal: true

RSpec.describe Parser::Review::Calculator, '.rating_for_dealership_rating' do
  let!(:json) { { dealership_rating: 1.5 } }

  it 'returns the self value' do
    json[:dealership_rating] = 5.1

    expect(described_class.rating_for_dealership_rating(json)).to be(5.1)
  end
end
