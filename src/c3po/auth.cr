require "http"

module C3po
  class Auth
    def self.call(path)
      return HTTP::Response.not_found if path.empty?

      HTTP::Client.exec("GET", path)
    end
  end
end
