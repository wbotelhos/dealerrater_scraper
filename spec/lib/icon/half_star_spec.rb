# frozen_string_literal: true

RSpec.describe Icon, '.half_star' do
  it { expect(described_class.half_star).to eq("\u{1f319}") }
end
