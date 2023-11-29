class AlbummmsController < ApplicationController
    def new
        @albummm = Albummm.new
        
    end

    def create
        albummm = Albummm.new(albummm_params)
        if albummm.save
        redirect_to albums_path
        else
        redirect_to :action => "new"
        end
    end    
    
    def show
        @albummm = Albummm.find(params[:id])
    end
    
    def edit
        @albummm = Albummm.find(params[:id])
    end
    
    def update
        albummm = Albummm.find(params[:id])
        if albummm.update(albummm_params)
        redirect_to :action => "show", :id => albummm.id
        else
        redirect_to :action => "new"
        end
    end
    def destroy
        albummm = Albummm.find(params[:id])
        albummm.destroy
        redirect_to albums_path
    end
    
    private
    def albummm_params
        params.require(:albummm).permit(:body, :image)
    end
    
end
