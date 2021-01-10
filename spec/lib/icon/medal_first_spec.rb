# frozen_string_literal: true

RSpec.describe Icon, '.medal_first' do
  it { expect(described_class.medal_first).to eq("\u{1f947}") }
end
