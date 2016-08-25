require 'rails_helper'

RSpec.describe "Produces", type: :request do
  describe "GET /produces" do
    it "works! (now write some real specs)" do
      get produces_path
      expect(response).to have_http_status(200)
    end
  end
end
