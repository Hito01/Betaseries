class Betaseries::Client
  module Shows

    def shows_search(query, options = {})
      @request.get("/shows/search/#{query}", options)
    end

    def shows_display(h_id, options = {})
      permitted_ids = ['id', 'thetvdb_id', 'imdb_id']
      id = h_id.map { |k,v| "#{k}=#{v}" if permitted_ids.include?(k.to_s) }
      id = id.join('&')
      @request.get("/shows/display?#{id}", options)
    end
  end
end

