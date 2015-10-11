module Betaseries
  module Error
    class Error < StandardError; end

    class ApiKeyMissing < Error; end

    class HttpError < Error; end
  end
end
