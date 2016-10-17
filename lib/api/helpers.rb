require 'requests'
require 'json'

class Helpers
  attr_accessor :baseURL
  @baseURL = ""
  def send_request(type, url, data: {})
    return JSON.parse(Requests.request(type, @baseURL + url, data: data.to_json, headers: {"Content-type" => "application/json"}).body)
  end
  def addToQuery(query, name, param)
    if query.length == 0 then
      query += "?"
    else
      query += "&"
    end
    query += name + "=" + param.to_s
    return query
  end
end
