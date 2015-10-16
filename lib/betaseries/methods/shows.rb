class Betaseries::Client
  module Shows

    def search(query, options = {})
      @request.get("/shows/search/#{query}", options)
    end
  end
end

