class ArtistsController < ApplicationController
  
  before_action :set_song
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  
  def index
    @artists = @song.artist
  end

  def show
  end

  def new
    @songs = Song.all
    @artist = Artist.new
    render partial: 'form'
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to song_artist_path(@song, @artist)
    else
      render :new
    end
  end

  def edit
    render partial: 'form'
  end

  def update
    if @artist.update(artist_params)
      redirect_to song_artist_path(@song, @artist)
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
    redirect_to root_path
  end
  
  private
    def artist_params
      params.require(:artist).permit(:name, :genre, :board_id)
    end

    def set_song
      @song = Song.find(params[:song_id])
    end

    def set_artist
      @artist = Artist.find(params[:id])
    end
end
