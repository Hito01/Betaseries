require 'spec_helper'

describe Betaseries::Client do
  describe "#initialize" do
    it "should raise an exception if the api key is not set" do
      expect { Betaseries::Client.new('111111') }.to raise_error(Betaseries::Error::ApiKeyMissing)
    end

    #it "should return a new client if an endpoint is passed in parameters" do 
      #expect(Betaseries::Client.new('123456789')).to_not be_nil
    #end
  end
end
