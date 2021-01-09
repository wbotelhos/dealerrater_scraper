# frozen_string_literal: true

RSpec.describe Parser::Review::Calculator, '.rating_for_employees_ratings' do
  let!(:json) { { employees_ratings: [{ rating: 5.0 }, { rating: 5.0 }, { rating: 5.3 }] } }

  it 'sums the ratings value' do
    expect(described_class.rating_for_employees_ratings(json)).to be(15.3)
  end
end
