# frozen_string_literal: true

RSpec.describe Parser::Review, '.date' do
  let!(:review) { review_content }

  it 'returns the date' do
    expect(described_class.date(review: review)).to eq('December 16, 2020')
  end
end
