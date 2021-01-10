# frozen_string_literal: true

RSpec.describe Parser::Review::Printer, '.dealership_rating' do
  context 'when has float value' do
    let!(:review) { { dealership_rating: 2.1 } }

    it 'returns the dealership rating to print' do
      expect(described_class.dealership_rating(review: review)).to eq("#{Icon.star} #{Icon.star} #{Icon.half_star}")
    end
  end

  context 'when has no float value' do
    let!(:review) { { dealership_rating: 2.0 } }

    it 'returns the dealership rating to print' do
      expect(described_class.dealership_rating(review: review)).to eq("#{Icon.star} #{Icon.star}")
    end
  end
end
