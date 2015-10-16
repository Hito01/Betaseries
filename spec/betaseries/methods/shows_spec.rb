require 'spec_helper'

describe Betaseries::Client::Shows do
  describe "#search" do
    before do
      stub_get("#{@client.request.class.base_uri}/shows/search/Gotham", 'shows_search')
      @shows = @client.search('Gotham')
    end

    context "when the searched show exist" do
      it "should return an array with all shows" do
        expect(@shows['shows']).to be_an Array
        expect(@shows['shows'].first['title']).to eq('Gotham')
      end
    end
  end
end
