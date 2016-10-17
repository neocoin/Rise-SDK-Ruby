require_relative 'helpers'

class Blocks
  def initialize(helpers)
    @helpers = helpers
  end

  def get(id)
      return @helpers.send_request("GET", "/api/blocks/get?id=" + id)
  end

  def getList(**kwargs)
      query = ""
      if kwargs.has_key? :generatorPublicKey then
        query = @helpers.addToQuery(query, "generatorPublicKey", kwargs[:generatorPublicKey])
      end
      if kwargs.has_key? :totalFee then
        query = @helpers.addToQuery(query, "totalFee", kwargs[:totalFee])
      end
      if kwargs.has_key? :totalAmount then
        query = @helpers.addToQuery(query, "totalAmount", kwargs[:totalAmount])
      end
      if kwargs.has_key? :previousBlock then
        query = @helpers.addToQuery(query, "previousBlock", kwargs[:previousBlock])
      end
      if kwargs.has_key? :height then
        query = @helpers.addToQuery(query, "height", kwargs[:height])
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
      return @helpers.send_request("GET", "/api/blocks" + query)
  end

  def getFee()
      return @helpers.send_request("GET", "/api/blocks/getFee")
  end

  def getFeesSchedule()
      return @helpers.send_request("GET", "/api/blocks/getFees")
  end

  def getReward()
      return @helpers.send_request("GET", "/api/blocks/getReward")
  end

  def getSupply()
      return @helpers.send_request("GET", "/api/blocks/getSupply")
  end

  def getHeight()
      return @helpers.send_request("GET", "/api/blocks/getHeight")
  end

  def getStatus()
      return @helpers.send_request("GET", "/api/blocks/getStatus")
  end

  def getNethash()
      return @helpers.send_request("GET", "/api/blocks/getNethash")
  end

  def getMilestone()
      return @helpers.send_request("GET", "/api/blocks/getMilestone")
  end
end
