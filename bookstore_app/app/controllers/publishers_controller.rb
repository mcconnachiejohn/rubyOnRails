class PublishersController < ApplicationController
    def index
        @publishers=Publisher.all 
    end

    def new 
    end
    def create 
        @publisher = Publisher.new(publisher_params)
        if @publisher.save
            redirect_to @publisher
        else
            render 'new'
        end
    end
    def show 
        @publisher = Publisher.find(params[:id])
    end
    
   # private
   
    
    def publisher_params
        params.require(:publisher).permit( :name, :country)
    end
end
