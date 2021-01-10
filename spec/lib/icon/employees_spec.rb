# frozen_string_literal: true

RSpec.describe Icon, '.employees' do
  it { expect(described_class.employees).to eq("\u{1f465}") }
end
