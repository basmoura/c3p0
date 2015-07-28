require "./c3po/*"
require "http"

module C3po
  C3po::Auth.call("http://www.jaya-apps.com")
end
