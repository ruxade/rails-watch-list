
# require 'uri'
# require 'net/http'

# url = URI("https://api.themoviedb.org/3/configuration")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true

# request = Net::HTTP::Get.new(url)
# request["accept"] = 'application/json'

# response = http.request(request)
# puts response.read_body


# app/services/movie_service.rb
require 'open-uri'
require 'json'

class MovieService
  BASE_URL = "https://tmdb.lewagon.com"

  def self.fetch_top_rated_movies
    url = "#{BASE_URL}/movie/top_rated"
    response = URI.open(url).read
    JSON.parse(response)
  end
end
