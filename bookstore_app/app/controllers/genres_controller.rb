class GenresController < ApplicationController
    def index
        @genres=Genre.all 
    end

    def new 
    end
    def create 
        @genre = Genre.new(genre_params)
        if @genre.save
            redirect_to @genre
        else
            render 'new'
        end
    end
   # private
   def show 
    @genre=Genre.find(params[:id])
    end
    
    def genre_params
        params.require(:genre).permit(:name)
    end
    
end
