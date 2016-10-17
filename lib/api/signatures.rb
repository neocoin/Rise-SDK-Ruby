require_relative 'helpers'

class Signatures
  def initialize(helpers)
    @helpers = helpers
  end

  def get(id)
    return @helpers.send_request("GET", "/api/signatures/get?id=" + id)
  end

  def add(secret, secondSecret, publicKey=nil)
    options = { "secret" => secret, "secondSecret" => secondSecret}
    unless publicKey == nil then
      options["publicKey"] = publicKey
    end
    return @helpers.send_request("PUT", "/api/signatures", options)
  end
end
