class MapController < ApplicationController

  

  def index
    @string = params[:address]
    @zillow = Rubillow::PropertyDetails.deep_search_results(@string)
    # @realprop = Rubillow::PropertyDetails.deep_search_results({ :address => '2801 Jasper St', :citystatezip => 'Philadelphia, PA' })
    @hood = Rubillow::Neighborhood.demographics({ :state => 'PA', :city => 'Philadelphia', :neighborhood => @zillow.region })
    @comps = Rubillow::PropertyDetails.deep_comps({ :zpid => @zillow.zpid, :count => 4 })
  end

  def show
  	
  end

end
