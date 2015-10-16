require 'spec_helper'

describe Betaseries::Request do
  describe "#initialize" do
    context "when the api key is not set" do
      it { expect { Betaseries::Request.new('') }.to raise_error(Betaseries::Error::ApiKeyMissing) }
    end

    context "when the api key is set" do
      it { expect(Betaseries::Request.new(API_KEY)).to_not be_nil }
    end
  end

  it "should response to get" do
    expect(Betaseries::Request.respond_to?(:get)).to be true
  end

  it "should response to post" do
    expect(Betaseries::Request.respond_to?(:post)).to be true
  end

  it "should response to put" do
    expect(Betaseries::Request.respond_to?(:put)).to be true
  end

  it "should response to delete" do
    expect(Betaseries::Request.respond_to?(:delete)).to be true
  end

  describe "#parse" do
    context "when the request returns a http code 200" do
      it "should parse the body" do
        stub_get('http://foo.bar', 'request_success')
        response = HTTParty.get('http://foo.bar')
        request = Betaseries::Request.new(API_KEY)
        expect(request.parse(response)).to eq({"foo" => "bar"})
      end
    end

    context "when the request doesn't return a http code 200" do
      it "should raise an HttpError" do
        stub_get('http://foo.bar', 'request_error', 404)
        response = HTTParty.get('http://foo.bar')
        request = Betaseries::Request.new(API_KEY)
        expect { request.parse(response) }.to raise_error(Betaseries::Error::HttpError)
      end
    end
  end
end
