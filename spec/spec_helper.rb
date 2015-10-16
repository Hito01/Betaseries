require 'rspec'
require 'webmock/rspec'

API_KEY = '1234'

Dir.glob(File.join(File.dirname(__FILE__), '../lib/**/*.rb')).each do |file|
  require file
end

def load_fixture(name)
  File.new(File.dirname(__FILE__) + "/fixtures/#{name}.json")
end

RSpec.configure do |config|
  config.before(:all) do
    @client = Betaseries::Client.new(API_KEY)
  end
end

def stub_get(url, fixture, status = 200)
  stub_request(:get, url)
  .to_return(body: load_fixture(fixture), status: status)
end

def stub_post(url, fixture, status = 200)
  stub_request(:post, url)
  .to_return(body: load_fixture(fixture), status: status)
end

def stub_put(url, fixture, status = 200)
  stub_request(:put, url)
  .to_return(body: load_fixture(fixture), status: status)
end

def stub_delete(url, fixture, status = 200)
  stub_request(:delete, url)
  .to_return(body: load_fixture(fixture), status: status)
end
