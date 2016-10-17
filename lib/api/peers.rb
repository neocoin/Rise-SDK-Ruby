require_relative 'helpers'

class Peers
  def initialize(helpers)
    @helpers = helpers
  end
  def getList(**kwargs)
    query = ""
    if kwargs.has_key? :state then
        query = @helpers.addToQuery(query, "state", kwargs[:state])
    end
    if kwargs.has_key? :os then
        query = @helpers.addToQuery(query, "os", kwargs[:os])
    end
    if kwargs.has_key? :version then
        query = @helpers.addToQuery(query, "version", kwargs[:version])
    end
    if kwargs.has_key? :limit then
        query = @helpers.addToQuery(query, "limit", kwargs[:limit])
    end
    if kwargs.has_key? :offset then
        query = @helpers.addToQuery(query, "offset", kwargs[:offset])
    end
    if kwargs.has_key? :orderBy then
        query = @helpers.addToQuery(query, "orderBy", kwargs[:orderBy])
    end
    return @helpers.send_request("GET", "/api/peers" + query)
  end
  def get(ip, port)
    return @helpers.send_request("GET", "/api/peers/get?ip=" + ip + "&port=" + port.to_s)
  end
  def version()
    return @helpers.send_request("GET", "/api/peers/version")
  end
end
