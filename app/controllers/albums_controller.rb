class AlbumsController < ApplicationController
    
    def index
        @albums = Album.all
        @albumms = Albumm.all
        @albummms = Albummm.all
    end
    
def new
    @album = Album.new
    
end

def create
    album = Album.new(album_params)
    if album.save
    redirect_to :action => "index"
    else
    redirect_to :action => "new"
    end
end

def show
    @album = Album.find(params[:id])
end

def edit
    @album = Album.find(params[:id])
end

def update
    album = Album.find(params[:id])
    if album.update(album_params)
    redirect_to :action => "show", :id => album.id
    else
    redirect_to :action => "new"
    end
end

def destroy
    album = Album.find(params[:id])
    album.destroy
    redirect_to action: :index
end

private
def album_params
    params.require(:album).permit(:body, :image)
end

end