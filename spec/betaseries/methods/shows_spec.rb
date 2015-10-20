require 'spec_helper'

describe Betaseries::Client::Shows do
  describe "#shows_search" do
    context "when there are results" do
      before do
        stub_get("#{@client.request.class.base_uri}/shows/search/Gotham", 'shows_search')
        @shows = @client.shows_search('Gotham')
      end

      it "should return an array with all the matching shows" do
        expect(@shows['shows']).to be_an Array
        expect(@shows['shows'].first['title']).to eq('Gotham')
      end
    end

    context "when there isn't result" do
      before do
        stub_get("#{@client.request.class.base_uri}/shows/search/Gotham", 'shows_search_empty')
        @shows = @client.shows_search('Gotham')
      end

      it "should return an array with all the matching shows" do
        expect(@shows['shows']).to be_an Array
        expect(@shows['shows']).to be_empty
      end
    end
  end

  describe "#shows_display" do
    context "when the requested show exists" do
      before do
        stub_get("#{@client.request.class.base_uri}/shows/display?id=7942", 'shows_display')
        @show = @client.shows_display({id: 7942})
      end

      it "should return a hash with the show information" do
        expect(@show['show']).to be_a Hash
        expect(@show['show']['id']).to eq(7942)
      end
    end

    context "when the requested show does not exist" do
      before do
        stub_get("#{@client.request.class.base_uri}/shows/display?id=123456", 'shows_display_empty')
        @show = @client.shows_display({id: 123456})
      end

      it "should return an error" do
        expect(@show['show']).to be_nil
        expect(@show['errors']).to_not be_empty 
      end
    end
  end
end
