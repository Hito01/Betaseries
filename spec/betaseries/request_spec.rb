require 'spec_helper'

describe Betaseries::Request do
  describe "#initialize" do
    it "should raise an exception if the api key is not set" do
      expect { Betaseries::Request.new('') }.to raise_error(Betaseries::Error::ApiKeyMissing)
    end

    it "should return a new client if the api key is set" do 
      expect(Betaseries::Request.new(API_KEY)).to_not be_nil
    end
  end
end
