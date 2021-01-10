# frozen_string_literal: true

RSpec.describe Icon, '.speak' do
  it { expect(described_class.speak).to eq("\u{1f5e3}") }
end
