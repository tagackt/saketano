require 'rails_helper'

RSpec.describe "Liquors", :type => :request do
  describe "GET /liquors" do
    it "works! (now write some real specs)" do
      get liquors_path
      expect(response).to have_http_status(200)
    end
  end
end
