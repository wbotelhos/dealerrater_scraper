# frozen_string_literal: true

RSpec.describe Parser::Review::Printer, '.rating_to_stars' do
  it 'converts the float number to star icons' do
    expect(described_class.rating_to_stars(1.0)).to eq(Icon.star)
    expect(described_class.rating_to_stars(2.0)).to eq("#{Icon.star} #{Icon.star}")
    expect(described_class.rating_to_stars(2.1)).to eq("#{Icon.star} #{Icon.star} #{Icon.half_star}")
  end
end
