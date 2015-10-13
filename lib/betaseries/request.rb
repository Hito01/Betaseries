require 'json'
require 'httparty'

module Betaseries
  class Request
  
    include HTTParty
    
    # Default settings
    base_uri 'api.betaseries.com'
    format :json
    headers 'Accept' => 'application/json', 'X-BetaSeries-Version' => '2.4'

    def initialize(api_key)
      self.class.headers['X-BetaSeries-Key'] = api_key
    end

    def get(path, options = {})
    end

    def post(path, options={})
    end

    def put(path, options={})
    end

    def delete(path, options={})
    end

    def parse(response)
      raise Betaseries::Error::HttpError.new "The request returned a http code #{response.code}" unless response.code == 200
    end
  end
end
