# frozen_string_literal: true

RSpec.describe Parser::Review::Printer, '.medal' do
  it 'returns the medal icon based on index' do
    expect(described_class.medal(position: 0)).to eq(Icon.medal_first)
    expect(described_class.medal(position: 1)).to eq(Icon.medal_second)
    expect(described_class.medal(position: 2)).to eq(Icon.medal_third)
  end
end
