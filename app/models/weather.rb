require 'net/http'

class Weather
  def self.get_weather_at_coordinates(lat, lng)
    lat ||= "40.7508"
    lng ||= "-73.8916"

    uri = URI.parse("https://api.darksky.net/forecast/#{ENV["DARK_SKY_API_KEY"]}/#{lat},#{lng}")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    data = http.get(uri.request_uri)
    data.body
  end
end