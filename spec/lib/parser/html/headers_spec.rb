# frozen_string_literal: true

RSpec.describe Parser::Html, '#headers' do
  it 'returns the http headers used to fetch html' do
    expect(described_class.headers).to eq('User-Agent' => 'Chrome/87.0.4280.141')
  end
end
