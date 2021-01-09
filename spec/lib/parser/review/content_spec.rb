# frozen_string_literal: true

RSpec.describe Parser::Review, '.content' do
  let!(:review) { review_content }

  it 'returns the content' do
    expect(described_class.content(review: review)).to eq([
      'I’m Lou Ann Wise and I drove from Marshall, TX. Patrick was very friendly and courteous.',
      'I was in and out in no time at all.',
    ].join(' '))
  end
end
