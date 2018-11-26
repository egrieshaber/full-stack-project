require 'rails_helper'

RSpec.describe "NewBands", type: :request do
  describe "GET /new_bands" do
    it "works! (now write some real specs)" do
      get new_bands_path
      expect(response).to have_http_status(200)
    end
  end
end
