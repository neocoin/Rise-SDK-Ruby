require_relative 'helpers'

class Delegates
  def initialize(helpers)
    @helpers = helpers
  end

  def enable(secret, secondSecret, username)
    return @helpers.send_request("PUT", "/api/delegates", {"secret" => secret, "secondSecret" => secondSecret, "username" => username})
  end

  def getList(**kwargs)
    query = ""
    if kwargs.has_key? :limit then
      query = @helpers.addToQuery(query, "limit", kwargs[:limit])
    end
    if kwargs.has_key? :offset then
      query = @helpers.addToQuery(query, "offset", kwargs[:offset])
    end
    if kwargs.has_key? :orderBy then
      query = @helpers.addToQuery(query, "orderBy", kwargs[:orderBy])
    end

    return @helpers.send_request("GET", "/api/delegates" + query)
  end

  def getByPublicKey(publicKey)
    return @helpers.send_request("GET", "/api/delegates/get?publicKey=" + publicKey)
  end

  def getByUsername(username)
    return @helpers.send_request("GET", "/api/delegates/get?username=" + username)
  end

  def count()
    return @helpers.send_request("GET", "/api/delegates/count")
  end

  def getVoters(publicKey)
    return @helpers.send_request("GET" , "/api/delegates/voters?publicKey=" + publicKey)
  end

  def enableForging(secret)
    return @helpers.send_request("POST", "/api/delegates/forging/enable", { "secret" => secret })
  end

  def disableForging(secret)
    return @helpers.send_request("POST", "/api/delegates/forging/disable", { "secret" => secret })
  end

  def getForgedByAccount(generatorPublicKey)
    return @helpers.send_request("POST", "/api/delegates/forging/getForgedByAccount?generatorPublicKey=" + generatorPublicKey)
  end
end
