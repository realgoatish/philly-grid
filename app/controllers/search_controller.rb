class SearchController < ApplicationController
    def results
        # @realprop = Rubillow::PropertyDetails.deep_search_results({ :address => '2801 Jasper St', :citystatezip => 'Philadelphia, PA' })
        # @hood = Rubillow::Neighborhood.demographics({ :state => 'PA', :city => 'Philadelphia', :neighborhood => @realprop.region })
        # @comps = Rubillow::PropertyDetails.deep_comps({ :zpid => @realprop.zpid, :count => 4 })
    end
end
