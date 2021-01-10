# frozen_string_literal: true

RSpec.describe Icon, '.thumb_down' do
  it { expect(described_class.thumb_down).to eq("\u{1f44e}") }
end
