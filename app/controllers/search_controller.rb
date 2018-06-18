class SearchController < ApplicationController
    def results
        @property = Rubillow::HomeValuation.search_results({ :address => '123 Garfield Ave', :citystatezip => 'Palmyra, NJ' })
    end
end
