# frozen_string_literal: true

RSpec.describe Parser::Review::Printer, '.call' do
  let!(:reviews) do
    [
      {
        content:           'Content means happy, you know...',
        date:              'January 10, 2021',
        dealership_rating: 4.0,
        employees_ratings: [{ name: 'Washington', rating: 3.5 }, { name: 'Botelho', rating: 4.0 }],
        recommend:         true,
        title:             'Is the Elixir the new React.js?',
        username:          'wbotelhos'
      },

      {
        content:           'a bb ccc ddd eeee fffff',
        date:              'December 17, 2020',
        dealership_rating: 2.1,
        employees_ratings: [{ name: 'Employee 1', rating: 1.1 }, { name: 'Employee 2', rating: 2.0 }],
        recommend:         false,
        title:             'Title 1',
        username:          'username-1'
      },
    ]
  end

  it 'prints the reviews' do
    output = <<~HEREDOC


    ----- 🥇 -----

    January 10, 2021
    ⭐ ⭐ ⭐ ⭐

    🗣  wbotelhos recommends 👍:

      "Is the Elixir the new React.js?"

    📃 Description:

      "Content means happy, you know..."

    👥 Employees worked with:

      Washington
      3.5 | ⭐ ⭐ ⭐ 🌙

      Botelho
      4.0 | ⭐ ⭐ ⭐ ⭐


    ----- 🥈 -----

    December 17, 2020
    ⭐ ⭐ 🌙

    🗣  username-1 does not recommend 👎:

      "Title 1"

    📃 Description:

      "a bb ccc ddd eeee fffff"

    👥 Employees worked with:

      Employee 1
      1.1 | ⭐ 🌙

      Employee 2
      2.0 | ⭐ ⭐
    HEREDOC

    expect { described_class.call(reviews) }.to output(output).to_stdout
  end
end
