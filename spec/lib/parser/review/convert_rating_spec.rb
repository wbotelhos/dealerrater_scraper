# frozen_string_literal: true

RSpec.describe Parser::Review, '.convert_rating' do
  let!(:value) { 'rating-static hidden-xs rating-51 margin-center' }

  it 'converts the value to float' do
    expect(described_class.convert_rating(value)).to be(5.1)
  end
end
