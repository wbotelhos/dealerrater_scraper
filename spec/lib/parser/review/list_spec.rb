# frozen_string_literal: true

RSpec.describe Parser::Review, '.list' do
  let!(:pages) { [page_content(1), page_content(2)] }

  it 'returns the list' do
    expect(described_class.list(pages)).to eq(
      [review_stephanie, review_louann326, review_lara, review_abigail].each { |review| review.delete(:ratings) }
    )
  end
end
