class AuthorsController < ApplicationController
    def index
        @authors=Author.all 
    end
    def new 
    end
   # private
   def show 
    @author=Author.find(params[:id])
  end
    def author_params
        params.require(:author).permit(:fname, :lname, :bio)
    end
    def create 
        @author = Author.new(author_params)
        if @author.save
            redirect_to @author
        else
            render 'new'
        end
    end
end
