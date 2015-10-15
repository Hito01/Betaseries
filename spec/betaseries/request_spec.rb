require 'spec_helper'

describe Betaseries::Request do
  describe "#initialize" do
    context "when the api key is not set" do
    #it "should raise an exception if the api key is not set" do
      it { expect { Betaseries::Request.new('') }.to raise_error(Betaseries::Error::ApiKeyMissing) }
    end

    context "when the api key is set" do
    #it "should return a new request if the api key is set" do 
      it { expect(Betaseries::Request.new(API_KEY)).to_not be_nil }
    end
  end
end
