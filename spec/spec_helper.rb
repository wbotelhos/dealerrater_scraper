# frozen_string_literal: true

def expected_output
  [
    {
      content: [
        'David Varner really worker hard over a couple of days to help my future husband',
        'get a brand new Chevy equinox thank you so much David',
      ].join(' '),

      date:              'December 17, 2020',
      dealership_rating: 5.0,

      employees_ratings: [
        { name: 'Freddie Tomlinson', rating: 5.0 },
        { name: 'David Varner', rating: 5.0 },
        { name: 'Brandon McCloskey', rating: 5.0 }
      ],

      features_ratings: {
        'Customer Service'   => 5.0,
        'Friendliness'       => 5.0,
        'Overall Experience' => 5.0,
        'Pricing'            => 5.0,
        'Quality of Work'    => 5.0,
      },

      recommend: true,
      title:     'David Varner really worker hard over a couple of days to...',
      username:  'Stephanie.veaseyste'
    },

    {
      content: [
        'I’m Lou Ann Wise and I drove from Marshall, TX. Patrick was very friendly and courteous.',
        'I was in and out in no time at all.',
      ].join(' '),

      date:              'December 16, 2020',
      dealership_rating: 5.0,

      employees_ratings: [
        { name: 'Patrick Evans', rating: 5.0 }
      ],

      features_ratings: {
        "Customer Service"   => 5.0,
        "Friendliness"       => 5.0,
        "Overall Experience" => 5.0,
        "Pricing"            => 0.0,
        "Quality of Work"    => 0.0,
      },

      recommend: true,
      title:     'I’m Lou Ann Wise and I drove from Marshall, TX. Patrick...',
      username:  'louann326'
    }
  ]
end

def page_content
  read_content(:page)
end

def read_content(page)
  Nokogiri::HTML(File.open("spec/fixtures/#{page}.html").read)
end

def review_content
  read_content(:review)
end
