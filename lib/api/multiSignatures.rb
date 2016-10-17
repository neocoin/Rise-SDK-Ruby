require_relative 'helpers'

class MultiSignatures
  def initialize(helpers)
    @helpers = helpers
  end

  def getPending(publicKey)
    return @helpers.send_request("GET", "/api/multisignatures/pending?publicKey=" + publicKey)
  end

  def create(secret, lifetime, min, keysGroup)
    return @helpers.send_request("PUT", "/api/multisignatures", { "secret" => secret, "lifetime" => lifetime, "min" => min, "keysgroup" => keysGroup })
  end

  def sign(secret, publicKey, transactionId)
    return @helpers.send_request("POST", "/api/multisignatures/sign", { "secret" => secret, "publicKey" => publicKey, "transactionId" => transactionId })
  end

  def getAccounts(publicKey)
    return @helpers.send_request("GET", "/api/multisignatures/accounts?publicKey=" + publicKey)
  end
end
