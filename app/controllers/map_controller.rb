class MapController < ApplicationController
  def index
    @nei_response = azavea_api_response
    @counsel_response = counseling_api_response
  end

  def show

  end

end
