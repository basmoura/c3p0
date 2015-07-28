require "./spec_helper"

describe C3po::Auth do

  context "when path is present" do
    path = "http://www.jaya-apps.com"
    response = C3po::Auth.call(path)

    it "returns status 200" do
      response.status_code.should eq(200)
    end
  end

  context "when path is not present" do
    path = ""
    response = C3po::Auth.call(path)

    it "return status 404" do
      response.status_code.should eq(404)
    end
  end
end
