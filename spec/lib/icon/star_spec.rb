# frozen_string_literal: true

RSpec.describe Icon, '.star' do
  it { expect(described_class.star).to eq("\u{2b50}") }
end
