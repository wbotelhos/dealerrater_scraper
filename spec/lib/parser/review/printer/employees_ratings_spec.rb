# frozen_string_literal: true

RSpec.describe Parser::Review::Printer, '.employees_ratings' do
  let!(:review) { { employees_ratings: [{ name: 'Employee 1', rating: 1.1 }, { name: 'Employee 2', rating: 2.0 }] } }

  it 'returns the employees ratings to print' do
    expect(described_class.employees_ratings(review: review)).to eq(
      "  Employee 1\n  1.1 | #{Icon.star} #{Icon.half_star}\n\n  Employee 2\n  2.0 | #{Icon.star} #{Icon.star}"
    )
  end
end
