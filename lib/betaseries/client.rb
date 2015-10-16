module Betaseries
  class Client

    # Require each methods files
    Dir.glob(File.join(File.dirname(__FILE__), 'methods/*.rb')).each {|f| require f }

    include Comments
    include Episodes
    include Friends
    include Members
    include Messages
    include Movies
    include Pictures
    include Planning
    include Shows
    include Subtitles
    include Timeline

    attr_accessor :api_key
    attr_accessor :request

    def initialize(api_key = '')
      raise Betaseries::Error::ApiKeyMissing.new 'a valid API key is needed to call Betaseries API' if api_key.empty?
      @api_key = api_key
      @request = Request.new(api_key)
    end
  end
end
