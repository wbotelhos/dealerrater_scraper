# frozen_string_literal: true

RSpec.describe Parser::Review, '.employees_ratings' do
  let!(:review) { review_content }

  it 'returns the employees ratings' do
    expect(described_class.employees_ratings(review: review)).to eq([{ name: 'Patrick Evans', rating: 5.0 }])
  end
end
