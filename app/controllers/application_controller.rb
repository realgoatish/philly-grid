class ApplicationController < ActionController::Base

	require 'net/http'
  require 'json'
  def azavea_api_response
    # encode URI using the URI constant
    uri1 = URI("https://raw.githubusercontent.com/azavea/geo-data/master/Neighborhoods_Philadelphia/Neighborhoods_Philadelphia.geojson")
    p uri1
    # tell Net::HTTP to GET the URI
    # @response = JSON.parse(Net::HTTP.get(uri))
    @nei_response = Net::HTTP.get(uri1)
  end
  
  def counseling_api_response 
# encode URI using the URI constant
    uri2 = URI("https://raw.githubusercontent.com/azavea/geo-data/master/Neighborhoods_Philadelphia/Neighborhoods_Philadelphia.geojson")
    p uri2
    # tell Net::HTTP to GET the URI
    # @response = JSON.parse(Net::HTTP.get(uri))
    @counsel_response = Net::HTTP.get(uri2)
end
    def parks_api_response
      uri3 = URI("http://data.phl.opendata.arcgis.com/datasets/4df9250e3d624ea090718e56a9018694_0.geojson")
      p uri3
      @parks_response = Net::HTTP.get(uri3)
    end


end
