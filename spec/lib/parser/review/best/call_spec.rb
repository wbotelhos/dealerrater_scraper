# frozen_string_literal: true

RSpec.describe Parser::Review::Best, '.call' do
  let!(:reviews) do
    [
      { name: 'review-1' },
      { name: 'review-2' },
      { name: 'review-3' },
      { name: 'review-4' },
    ]
  end

  it 'returns the last 3 ordered desc' do
    expect(described_class.call(reviews).map { |item| item[:name] }).to eq(%w[
      review-4
      review-3
      review-2
    ])
  end
end
