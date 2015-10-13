class Betaseries::Client
  module Episodes

    def episode_watched
      request = Betaseries::Request.new(self.api_key)
      request.get('/shows/search?title=breaking')
    end
  end
end
