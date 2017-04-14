
require 'faraday'

class Api
  BASE_URL = 'http://www.exxentric.com'
  #COOKIE = 'code=13fa1fa011169ab29007fcad17b2ae; user_id=279789'

  def self.get(query)
    Faraday.get(BASE_URL, { qe: query }).body #, Cookie: COOKIE).body
  end
end

Api.get("foo")
