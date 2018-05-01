class ApplicationController < ActionController::Base

	require 'net/http'
  require 'json'
  def azavea_api_response
    # encode URI using the URI constant
    uri = URI("https://raw.githubusercontent.com/azavea/geo-data/master/Neighborhoods_Philadelphia/Neighborhoods_Philadelphia.geojson")
    p uri
    # tell Net::HTTP to GET the URI
    # @response = JSON.parse(Net::HTTP.get(uri))
    @response = Net::HTTP.get(uri)
  end

end
