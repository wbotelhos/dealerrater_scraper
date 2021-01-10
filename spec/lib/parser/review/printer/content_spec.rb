# frozen_string_literal: true

RSpec.describe Parser::Review::Printer, '.content' do
  let!(:max_length) { 6 }
  let!(:text) { 'a bb ccc ddd eeee fffff' }

  it 'returns content limited by quantity of chars for each line' do
    expect(described_class.content(text, max_length)).to eq("a bb ccc \n  ddd eeee \n  fffff")
  end
end
