# frozen_string_literal: true

RSpec.describe Parser::Review, '.employees_ratings' do
  context 'when employee has review' do
    let!(:review) { review_content }

    it 'returns the employees ratings' do
      expect(described_class.employees_ratings(review: review)).to eq([{ name: 'Patrick Evans', rating: 5.0 }])
    end
  end

  context 'when employee has no review' do
    let!(:review) { read_content(file: :employee_without_review) }

    it 'returns a nil rating' do
      expect(described_class.employees_ratings(review: review)).to eq([{ name: 'Mariela Hernandez', rating: nil }])
    end
  end
end
