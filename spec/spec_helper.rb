require 'rspec'
require 'webmock/rspec'

API_KEY = '1234'

Dir.glob(File.join(File.dirname(__FILE__), '../lib/**/*.rb')).each do |file|
  require file
end

def stub_get(url, body = "", status = 200)
  stub_request(:get, url).to_return(body: body, status: status)
end

def stub_post(url, body = "", status = 200)
  stub_request(:post, url).to_return(body: body, status: status)
end

def stub_put(url, body = "", status = 200)
  stub_request(:put, url).to_return(body: body, status: status)
end

def stub_delete(url, body = "", status = 200)
  stub_request(:delete, url).to_return(body: body, status: status)
end
