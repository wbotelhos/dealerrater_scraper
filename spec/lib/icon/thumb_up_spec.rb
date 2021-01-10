# frozen_string_literal: true

RSpec.describe Icon, '.thumb_up' do
  it { expect(described_class.thumb_up).to eq("\u{1f44d}") }
end
