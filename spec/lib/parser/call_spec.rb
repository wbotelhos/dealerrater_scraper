# frozen_string_literal: true

RSpec.describe Parser, '.call' do
  it 'parsers all review pages' do
    expect(described_class.call(pages: 2)).to eq([review_stephanie, review_abigail, review_lara])
  end
end
