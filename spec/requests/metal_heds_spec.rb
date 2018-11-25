require 'rails_helper'

RSpec.describe "MetalHeds", type: :request do
  describe "GET /metal_heds" do
    it "works! (now write some real specs)" do
      get metal_heds_path
      expect(response).to have_http_status(200)
    end
  end
end
