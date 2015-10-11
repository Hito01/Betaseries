require 'rspec'

# Require all files in /lib/betaseries
Dir.glob(File.join(File.dirname(__FILE__), '../lib/betaseries/*.rb')).each do |file|
  require file
end
