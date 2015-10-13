require 'json'
require 'httparty'

module Betaseries
  class Request
  
    include HTTParty
    
    # Default settings
    base_uri 'api.betaseries.com'
    format :json
    headers 'Accept' => 'application/json', 'X-BetaSeries-Version' => '2.4'

    def initialize(api_key = '')
      raise Betaseries::Error::ApiKeyMissing.new 'a valid API key is needed to call Betaseries API' if api_key.empty?
      self.class.headers['X-BetaSeries-Key'] = api_key
    end

    def get(path, options = {})
      parse self.class.get(path, options)
    end

    def post(path, options={})
      parse self.class.post(path, options)
    end

    def put(path, options={})
      parse self.class.put(path, options)
    end

    def delete(path, options={})
      parse self.class.delete(path, options)
    end

    def parse(response)
      raise Betaseries::Error::HttpError.new "The request returned a http code #{response.code}" unless response.code == 200
      JSON.parse(response.body)
    end
  end
end
