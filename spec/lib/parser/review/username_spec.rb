# frozen_string_literal: true

RSpec.describe Parser::Review, '.username' do
  let!(:review) { review_content }

  it 'returns the username' do
    expect(described_class.username(review: review)).to eq('louann326')
  end
end
