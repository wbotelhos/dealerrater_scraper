# frozen_string_literal: true

RSpec.describe Parser::Sanitizer, '.call' do
  it 'removes undesired chars from the text' do
    expect(described_class.call(%(  "  \n  ))).to eq('"')
  end

  context 'when item is passed to be removed' do
    it 'removes this item too' do
      expect(described_class.call(%(  "  \n  ), remove: '"')).to eq('')
    end
  end
end
