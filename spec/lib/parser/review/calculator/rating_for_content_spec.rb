# frozen_string_literal: true

require 'support/env_mock'

RSpec.describe Parser::Review::Calculator, '.rating_for_content' do
  let!(:json) { { content: 'The service is good the people is nice but the access is bad.' } }

  it 'returns 1 for good words and -1 for bad words' do
    EnvMock.mock(bad_words: 'bad', good_words: 'good,nice') do
      expect(described_class.rating_for_content(json)).to be(2)
    end
  end
end
