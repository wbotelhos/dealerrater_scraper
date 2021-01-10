# frozen_string_literal: true

RSpec.describe Logger, '.log' do
  it 'prints on console' do
    expect { described_class.log('STDOUT Target') }.to output("STDOUT Target\n").to_stdout
  end
end
