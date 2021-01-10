# frozen_string_literal: true

RSpec.describe Parser::Review::Printer, '.recommend' do
  context 'when recommend is true' do
    let!(:review) { { recommend: true } }

    it 'returns text recommending' do
      expect(described_class.recommend(review: review)).to eq("recommends #{Icon.thumb_up}")
    end
  end

  context 'when recommend is false' do
    let!(:review) { { recommend: false } }

    it 'returns text not recommending' do
      expect(described_class.recommend(review: review)).to eq("does not recommend #{Icon.thumb_down}")
    end
  end
end
