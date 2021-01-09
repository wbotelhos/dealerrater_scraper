# frozen_string_literal: true

RSpec.describe Parser::Review, '.list' do
  let!(:page) { page_content }

  it 'returns the list' do
    expect(described_class.list(page)).to eq(expected_output)
  end
end
