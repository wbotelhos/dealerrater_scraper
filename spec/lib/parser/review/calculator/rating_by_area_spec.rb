# frozen_string_literal: true

require 'support/env_mock'

RSpec.describe Parser::Review::Calculator, '.rating_by_area' do
  let!(:json) do
    {
      content:           'The service is good the people is nice but the access is bad.',
      dealership_rating: 5.1,
      employees_ratings: [{ rating: 5.0 }, { rating: 5.0 }, { rating: 5.3 }],
      features_ratings:  { 'a' => 5.0, 'b' => 5.2 },
      recommend:         true,
    }
  end

  it 'returns the rating of each area' do
    EnvMock.mock(bad_words: 'bad', good_words: 'good,nice') do
      expect(described_class.rating_by_area(json)).to eq(
        content:           2,
        dealership_rating: 5.1,
        employees_ratings: 15.3,
        features_ratings:  10.2,
        recommend:         1
      )
    end
  end
end
