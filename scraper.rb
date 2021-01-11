# frozen_string_literal: true

require 'optparse'

require_relative 'lib/parser'

options = {}

OptionParser.new do |opts|
  opts.banner = 'Usage: ruby scraper.rb [options]'

  opts.on('--display=NUMBER', 'Number of the best reviews to be displayed') { |value| options[:display] = value }
  opts.on('--pages=NUMBER', 'Quantity of page to be scraped') { |value| options[:pages] = value }
  opts.on('--slug=STRING', 'The slug of the source') { |value| options[:slug] = value }
  opts.on('--source=STRING', 'The source kind (dealer)') { |value| options[:source] = value }
end.parse!

Parser.call(
  display: options.fetch(:display, 3).to_i,
  pages:   options.fetch(:pages, 5).to_i,
  slug:    options[:slug],
  source:  options[:source]
)
