# frozen_string_literal: true

RSpec.describe Parser::Review::Calculator, '.rating_for_features_ratings' do
  let!(:json) { { features_ratings: { 'a' => 5.0, 'b' => 5.2 } } }

  it 'sums the ratings value' do
    expect(described_class.rating_for_features_ratings(json)).to be(10.2)
  end
end
