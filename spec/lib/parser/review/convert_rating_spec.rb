# frozen_string_literal: true

RSpec.describe Parser::Review, '.convert_rating' do
  context 'when value is not nil' do
    let!(:value) { 'rating-static hidden-xs rating-51 margin-center' }

    it 'converts the value to float' do
      expect(described_class.convert_rating(value)).to be(5.1)
    end
  end

  context 'when value is nil' do
    let!(:value) { nil }

    it { expect(described_class.convert_rating(value)).to be(nil) }
  end
end
