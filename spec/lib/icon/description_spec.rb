# frozen_string_literal: true

RSpec.describe Icon, '.description' do
  it { expect(described_class.description).to eq("\u{1f4c3}") }
end
