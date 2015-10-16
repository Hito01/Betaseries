class Betaseries::Client
  module Episodes

    def episode_watched
      @request.get('/shows/search?title=breaking')
    end
  end
end
