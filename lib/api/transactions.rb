require_relative 'helpers'

class Transactions
  def initialize(helpers)
    @helpers = helpers
  end

  def getList(**kwargs)
    query = ""
    if kwargs.has_key? :blockId then
        query = addToQuery(query, "blockId", kwargs[:blockId])
    end
    if kwargs.has_key? :senderId then
        query = addToQuery(query, "senderId", kwargs[:senderId])
    end
    if kwargs.has_key? :recipientId then
        query = addToQuery(query, "recipientId", kwargs[:recipientId])
    end
    if kwargs.has_key? :limit then
        query = addToQuery(query, "limit", kwargs[:limit])
    end
    if kwargs.has_key? :offset then
        query = addToQuery(query, "offset", kwargs[:offset])
    end
    if kwargs.has_key? :orderBy then
        query = addToQuery(query, "orderBy", kwargs[:orderBy])
    end

    return send_request("GET", "/api/transactions" + query)
  end
  def send(secret, amount, recipientId, publicKey, secondSecret=nil)
    options = { "secret" => secret, "amount" => amount, "recipientId" => recipientId, "publicKey" => publicKey}
    unless secondSecret == nil then
      options["secondSecret"] = secondSecret
    end
    return send_request("PUT", "/api/transactions", options)
  end
  def get(id)
    return send_request("GET", "/api/transactions/get?id=" + id)
  end
  def getUnconfirmed(id)
    return send_request("GET", "/api/transactions/unconfirmed/get?id=" + id)
  end
  def getUnconfirmedList()
    return send_request("GET", "/api/transactions/unconfirmed")
  end
end
