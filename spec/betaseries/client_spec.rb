require 'spec_helper'

describe Betaseries::Client do
  describe "#initialize" do
    context "when the api key is not set" do
      it { expect { Betaseries::Client.new('') }.to raise_error(Betaseries::Error::ApiKeyMissing) }
    end

    context "when the api key is set" do
      it { expect(Betaseries::Client.new(API_KEY)).to_not be_nil }
    end
  end

  describe "includes" do
    it "should include Comments" do
      expect(Betaseries::Client.include?(Betaseries::Client::Comments)).to be true
    end

    it "should include Episodes" do
      expect(Betaseries::Client.include?(Betaseries::Client::Episodes)).to be true
    end

    it "should include Friends" do
      expect(Betaseries::Client.include?(Betaseries::Client::Friends)).to be true
    end

    it "should include Members" do
      expect(Betaseries::Client.include?(Betaseries::Client::Members)).to be true
    end

    it "should include Messages" do
      expect(Betaseries::Client.include?(Betaseries::Client::Messages)).to be true
    end

    it "should include Movies" do
      expect(Betaseries::Client.include?(Betaseries::Client::Movies)).to be true
    end
    
    it "should include Pictures" do
      expect(Betaseries::Client.include?(Betaseries::Client::Pictures)).to be true
    end

    it "should include Planning" do
      expect(Betaseries::Client.include?(Betaseries::Client::Planning)).to be true
    end

    it "should include Shows" do
      expect(Betaseries::Client.include?(Betaseries::Client::Shows)).to be true
    end

    it "should include Subtitles" do
      expect(Betaseries::Client.include?(Betaseries::Client::Subtitles)).to be true
    end

    it "should include Timeline" do
      expect(Betaseries::Client.include?(Betaseries::Client::Timeline)).to be true
    end
  end
end
