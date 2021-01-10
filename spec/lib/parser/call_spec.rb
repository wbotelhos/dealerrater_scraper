# frozen_string_literal: true

require 'support/requester'

RSpec.describe Parser, '.call' do
  it 'prints the best reviews based on given criteria' do
    output = <<~HEREDOC
    [Parser::Html#fetch] Parsing page 1


    ----- 🥇 -----

    December 17, 2020
    ⭐ ⭐ ⭐ ⭐ ⭐

    🗣  Stephanie.veaseyste recommends 👍:

      "David Varner really worker hard over a couple of days to..."

    📃 Description:

      "David Varner really worker hard over a couple of days to help my future husband get a brand new Chevy\s
      equinox thank you so much David"

    👥 Employees worked with:

      Freddie Tomlinson
      5.0 | ⭐ ⭐ ⭐ ⭐ ⭐

      David Varner
      5.0 | ⭐ ⭐ ⭐ ⭐ ⭐

      Brandon McCloskey
      5.0 | ⭐ ⭐ ⭐ ⭐ ⭐
    HEREDOC

    expect { described_class.call(display: 1, pages: 1, requester: Requester) }.to output(output).to_stdout
  end
end
