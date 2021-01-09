# frozen_string_literal: true

RSpec.describe Parser::Review::Calculator, '.rating_for_recommend' do
  context 'when is recommended' do
    let!(:json) { { recommend: true } }

    it 'returns 1' do
      expect(described_class.rating_for_recommend(json)).to be(1)
    end
  end

  context 'when is not recommended' do
    let!(:json) { { recommend: false } }

    it 'returns 0' do
      expect(described_class.rating_for_recommend(json)).to be(0)
    end
  end
end
