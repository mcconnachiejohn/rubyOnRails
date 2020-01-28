class NovelsController < ApplicationController
        def index
            @novels=Novel.all 
        end
    
        def new 
        end
        def create 
            @novel = Novel.new(novel_params)
            if @novel.save
                redirect_to @novel
            else
                render 'new'
            end
        end
        def show 
            @novel = Novel.find(params[:id])
        end
        
       # private
       
        
        def novel_params
            params.require(:novel).permit( :name, :country , :genre_id , :author_id , :publisher_id , :isbn , :price , :publication , :format , :description , :pages  )
        end
        
    
end
