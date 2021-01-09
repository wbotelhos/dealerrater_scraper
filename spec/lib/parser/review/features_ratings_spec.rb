# frozen_string_literal: true

RSpec.describe Parser::Review, '.features_ratings' do
  let!(:review) { review_content }

  it 'returns the features ratings' do
    expect(described_class.features_ratings(review: review)).to eq(
      'Customer Service'   => 5.0,
      'Friendliness'       => 5.0,
      'Overall Experience' => 5.0,
      'Pricing'            => 0.0,
      'Quality of Work'    => 0.0
    )
  end
end
