class MapController < ApplicationController

  

  def index
    if params[:address].present?
      @string = "#{params[:address]}"
    else
      @string = "2810 Jasper St"
    end
    @zillow = Rubillow::PropertyDetails.deep_search_results({ :address => @string, :citystatezip => 'Philadelphia, PA' })
    # @realprop = Rubillow::PropertyDetails.deep_search_results({ :address => '2801 Jasper St', :citystatezip => 'Philadelphia, PA' })
    @hood = Rubillow::Neighborhood.demographics({ :state => 'PA', :city => 'Philadelphia', :neighborhood => @zillow.region })
    @comps = Rubillow::PropertyDetails.deep_comps({ :zpid => @zillow.zpid, :count => 4 })
  end

  # def results
  #   if params[:address].present?
  #     @string = "#{params[:address]}"
  #   else
  #     @string = "2810 Jasper St"
  #   end
  #   @zillow = Rubillow::PropertyDetails.deep_search_results({ :address => @string, :citystatezip => 'Philadelphia, PA' })
  #   # @realprop = Rubillow::PropertyDetails.deep_search_results({ :address => '2801 Jasper St', :citystatezip => 'Philadelphia, PA' })
  #   @hood = Rubillow::Neighborhood.demographics({ :state => 'PA', :city => 'Philadelphia', :neighborhood => @zillow.region })
  #   @comps = Rubillow::PropertyDetails.deep_comps({ :zpid => @zillow.zpid, :count => 4 })
  #   respond_to do |format|
  #     format.html
  #     format.json
  #   end
  # end

  def show
  	
  end

end
