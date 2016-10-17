require_relative 'helpers'

class Loader
  def initialize(helpers)
    @helpers = helpers
  end
  def status
    return @helpers.send_request("GET", "/api/loader/status")
  end
  def syncStatus
    return @helpers.send_request("GET", "/api/loader/status/sync")
  end
end
