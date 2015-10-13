module Betaseries
  module Error
    class ApiKeyMissing < StandardError; end

    class HttpError < StandardError; end
  end
end
