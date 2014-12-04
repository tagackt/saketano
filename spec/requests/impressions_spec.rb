require 'rails_helper'

RSpec.describe "Impressions", :type => :request do
  describe "GET /impressions" do
    it "works! (now write some real specs)" do
      get impressions_path
      expect(response).to have_http_status(200)
    end
  end
end
