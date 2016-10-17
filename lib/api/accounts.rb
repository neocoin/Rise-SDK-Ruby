require_relative 'helpers'

class Accounts
  def initialize(helpers)
    @helpers = helpers
  end
  def open(secret)
    return @helpers.send_request("POST", "/api/accounts/open", data: { "secret" => secret })
  end

  def getBalance(address)
    return @helpers.send_request("GET", "/api/accounts/getBalance?address=" + address)
  end

  def getPublicKey(address)
    return @helpers.send_request("GET", "/api/accounts/getPublicKey?address=" + address)
  end

  def generatePublicKey(secret)
    return @helpers.send_request("POST", "/api/accounts/generatePublicKey", data: { "secret" => secret })
  end

  def getAccount(address)
    return @helpers.send_request("GET", "/api/accounts?address=" + address)
  end

  def getDelegates(address)
    return @helpers.send_request("GET", "/api/accounts/delegates?address=" + address)
  end

  def putDelegates(secret, publicKey, delegates, secondSecret: nil)
    options = { "secret" => secret, "publicKey" => publicKey, "delegates" => delegates }
    unless secondSecret == nil then
      options["secondSecret"] = secondSecret
    end
    return @helpers.send_request("PUT", "/api/accounts/delegates", data: options)
  end
end
