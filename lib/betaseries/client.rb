require_relative 'request.rb'

module Betaseries
  class Client

    attr_accessor :api_key

    def initialize(api_key = '')
      req = Request.new
      puts req.headers 
      exit(0)
      raise Betaseries::Error::ApiKeyMissing.new 'a valid API key is needed to call Betaseries API' if api_key.empty?
      self.api_key = api_key
    end
  end
end
