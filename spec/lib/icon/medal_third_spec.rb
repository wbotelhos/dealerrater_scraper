# frozen_string_literal: true

RSpec.describe Icon, '.medal_third' do
  it { expect(described_class.medal_third).to eq("\u{1f949}") }
end
