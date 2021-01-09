# frozen_string_literal: true

RSpec.describe Parser::Review::Sorter, '.call' do
  let!(:weighted_review) do
    [
      {
        name: 'review-1',

        ratings: {
          recommend:         10,
          dealership_rating: 11,
          features_ratings:  12,
          content:           13,
          employees_ratings: 14,
        },
      },

      {
        name: 'review-2',

        ratings: {
          recommend:         9, # lost < 10
          dealership_rating: 12,
          features_ratings:  13,
          content:           14,
          employees_ratings: 15,
        },
      },

      {
        name: 'review-3',

        ratings: {
          recommend:         9, # draw == 9
          dealership_rating: 11, # lost < 12
          features_ratings:  13,
          content:           14,
          employees_ratings: 15,
        },
      },

      {
        name: 'review-4',

        ratings: {
          recommend:         9,
          dealership_rating: 11, # draw == 11
          features_ratings:  12, # lost < 13
          content:           14,
          employees_ratings: 15,
        },
      },

      {
        name: 'review-5',

        ratings: {
          recommend:         9,
          dealership_rating: 11,
          features_ratings:  12, # draw == 12
          content:           13, # lost < 14
          employees_ratings: 15,
        },
      },

      {
        name: 'review-6',

        ratings: {
          recommend:         9,
          dealership_rating: 11,
          features_ratings:  12,
          content:           13, # draw == 13
          employees_ratings: 14, # lost < 15
        },
      },
    ].shuffle
  end

  it 'sorts review based on most important rating' do
    expect(described_class.call(weighted_review).map { |item| item[:name] }).to eq(%w[
      review-6
      review-5
      review-4
      review-3
      review-2
      review-1
    ])
  end
end
