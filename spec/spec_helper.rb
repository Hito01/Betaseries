require 'rspec'
require 'webmock/rspec'

API_KEY = '1234'

Dir.glob(File.join(File.dirname(__FILE__), '../lib/**/*.rb')).each do |file|
  require file
end

