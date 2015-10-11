require 'json'
require 'httparty'

module Betaseries
  class Request
  
    include HTTParty
    
    # Default settings
    base_uri 'api.betaseries.com'
    format :json
    headers 'Accept' => 'application/json', 'X-BetaSeries-Version' => '2.4'

    def get(path)
    end

    def post(path)
    end

    def put(path)
    end

    def delete(path)
    end

    def parse(response)
      raise Betaseries::Error::HttpError.new "The request returned a http code #{response.code}" unless response.code == 200
    end
  end
end
