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

        def edit 
            @novel = Novel.find(params[:id])
            
        end

        def update 
#             @novel = Novel.find(params[:id])
#             puts @novel;
#  if @novel.update(novel_params)
#  redirect_to @novel
#  else
#  render 'edit'
#  end
 @novel = Novel.find(params[:id])
  @novel.update(name: params[:novel][:name],genre_id: params[:novel][:genre_id],author_id: params[:novel][:author_id],publisher_id: params[:novel][:publisher_id],isbn: params[:novel][:isbn],price: params[:novel][:price],publication: params[:novel][:publication],format: params[:novel][:format],description: params[:novel][:description],pages: params[:novel][:pages])
  redirect_to novels_path(@novel)

        end
        
       # private
       
        
        def novel_params
            params.permit( :name, :country , :genre_id , :author_id , :publisher_id , :isbn , :price , :publication , :format , :description , :pages  )
        end

         def destroy
            @novel = Novel.find(params[:id])
            @novel.destroy
            redirect_to novels_path
        end
        
    
end
