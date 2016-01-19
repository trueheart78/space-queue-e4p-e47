class OpenNotify
  def self.astronauts
    HTTParty.get('http://api.open-notify.org/astros.json').parsed_response
  end
end
