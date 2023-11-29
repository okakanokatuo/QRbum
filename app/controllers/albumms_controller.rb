class AlbummsController < ApplicationController

def new
    @albumm = Albumm.new
    
end

def create
    albumm = Albumm.new(albumm_params)
    if albumm.save
    redirect_to albums_path
    else
    redirect_to :action => "new"
    end
end

def show
    @albumm = Albumm.find(params[:id])
end

def edit
    @albumm = Albumm.find(params[:id])
end

def update
    albumm = Albumm.find(params[:id])
    if albumm.update(albumm_params)
    redirect_to :action => "show", :id => albumm.id
    else
    redirect_to :action => "new"
    end
end
def destroy
    albumm = Albumm.find(params[:id])
    albumm.destroy
    redirect_to albums_path
end

private
def albumm_params
    params.require(:albumm).permit(:body, :image)
end

end
