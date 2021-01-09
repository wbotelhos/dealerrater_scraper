# frozen_string_literal: true

RSpec.describe Parser, '.call' do
  it 'parsers all review pages' do
    expect(described_class.call).to eq(expected_output)
  end
end
