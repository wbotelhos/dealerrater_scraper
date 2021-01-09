# frozen_string_literal: true

def review_abigail
  {
    content: [
      'I recommend McKaig Chevrolet Buick. We decided to request on a vehicle and they contacted us right away.',
      'Go see Mr. Dennis Smith to help you with your dream car! He was super patient with all mi kids and being with',
      'us until 10pm! We are from Henderson, TX and definitely was worth the drive! I appreciate the help we got',
      'from Dennis, McCloskey, andPrickett. They made our purchase so smoothly.',
      'I highly recommend them to my family and friends.'
    ].join(' '),

    date:              'December 07, 2020',
    dealership_rating: 5.0,
    employees_ratings: [{ name: 'Dennis Smith', rating: 5.0 }],

    features_ratings: {
      'Customer Service'   => 5.0,
      'Friendliness'       => 5.0,
      'Overall Experience' => 5.0,
      'Pricing'            => 5.0,
      'Quality of Work'    => 5.0
    },

    ratings:   { content: 0, dealership_rating: 5.0, employees_ratings: 5.0, features_ratings: 25.0, recommend: 1 },
    recommend: true,
    title:     'I recommend McKaig Chevrolet Buick. We decided to request...',
    username:  'Abigail argueta'
  }
end

def review_lara
  {
    content: [
      'Shonna and her team were very friendly and professional, the process was relaxed and without pressure',
      'for the sale. I will refer anyone looking for a vehicle here! Thank you!'
    ].join(' '),

    date:              'December 09, 2020',
    dealership_rating: 5.0,
    employees_ratings: [{ name: 'Shonna Stuve', rating: 5.0 }],

    features_ratings: {
      'Customer Service'   => 5.0,
      'Friendliness'       => 5.0,
      'Overall Experience' => 5.0,
      'Pricing'            => 5.0,
      'Quality of Work'    => 5.0
    },

    ratings:  { content: 0, dealership_rating: 5.0, employees_ratings: 5.0, features_ratings: 25.0, recommend: 1 },
    recommend: true,
    title:     'Shonna and her team were very friendly and professional,...',
    username:  'Lara Harrison'
  }
end

def review_stephanie
  {
    content: [
      'David Varner really worker hard over a couple of days to help my future husband',
      'get a brand new Chevy equinox thank you so much David'
    ].join(' '),

    date: 'December 17, 2020',
    dealership_rating: 5.0,

    employees_ratings: [
      { name: 'Freddie Tomlinson', rating: 5.0 },
      { name: 'David Varner', rating: 5.0 },
      { name: 'Brandon McCloskey', rating: 5.0 }
    ],

    features_ratings: {
      'Customer Service' => 5.0,
      'Friendliness' => 5.0,
      'Overall Experience' => 5.0,
      'Pricing' => 5.0,
      'Quality of Work' => 5.0
    },

    ratings:   { content: 0, dealership_rating: 5.0, employees_ratings: 15.0, features_ratings: 25.0, recommend: 1 },
    recommend: true,
    title:     'David Varner really worker hard over a couple of days to...',
    username:  'Stephanie.veaseyste'
  }
end

def review_louann326
  {
    content: [
      'I’m Lou Ann Wise and I drove from Marshall, TX. Patrick was very friendly and courteous.',
      'I was in and out in no time at all.'
    ].join(' '),

    date:              'December 16, 2020',
    dealership_rating: 5.0,
    employees_ratings: [{ name: 'Patrick Evans', rating: 5.0 }],

    features_ratings: {
      'Customer Service' => 5.0,
      'Friendliness' => 5.0,
      'Overall Experience' => 5.0,
      'Pricing' => 0.0,
      'Quality of Work' => 0.0
    },

    ratings:   { content: 0, dealership_rating: 5.0, employees_ratings: 15.0, features_ratings: 15.0, recommend: 1 },
    recommend: true,
    title:     'I’m Lou Ann Wise and I drove from Marshall, TX. Patrick...',
    username:  'louann326'
  }
end

def page_content(number = 1)
  read_content(:page, number)
end

def read_content(page, number)
  Nokogiri::HTML(File.open("spec/fixtures/#{page}#{number}.html").read)
end

def review_content(number = 1)
  read_content(:review, number)
end
