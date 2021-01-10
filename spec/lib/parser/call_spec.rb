# frozen_string_literal: true

require 'support/requester'

RSpec.describe Parser, '.call' do
  it 'parsers all review pages' do
    expect(described_class.call(pages: 2, requester: Requester)).to eq([review_stephanie, review_abigail, review_lara])
  end
end
