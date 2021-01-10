require 'optparse'

require_relative 'lib/parser'

options = {}

OptionParser.new do |opts|
  opts.banner = 'Usage: ruby scraper.rb [options]'

  opts.on('--display=NUMBER', 'Number of the best reviews to be displayed') { |value| options[:display] = value }
  opts.on('--pages=NUMBER', 'Quantity of page to be scanned') { |value| options[:pages] = value }
end.parse!

Parser.call(display: options[:display].to_i, pages: options[:pages].to_i)
