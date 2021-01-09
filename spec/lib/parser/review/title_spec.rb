# frozen_string_literal: true

RSpec.describe Parser::Review, '.title' do
  let!(:review) { review_content }

  it 'returns the title' do
    expect(described_class.title(review: review)).to eq('I’m Lou Ann Wise and I drove from Marshall, TX. Patrick...')
  end
end
