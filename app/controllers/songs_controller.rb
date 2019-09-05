class SongsController < ApplicationController

  before_action :set_board
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = @board.songs.order("plays DESC")
  end

  def show
  end

  def new
    @song = @board.songs.new
    render partial: 'form'
  end

  def create
    @song = @board.songs.new(song_params)
    if @song.save
      redirect_to [@board, @song]
    else
      render :new
    end
  end

  def edit
    render partial: 'form'
  end

  def update
    if @song.update(song_params)
      redirect_to [@board, @song]
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to board_songs_path
  end

  private
    def song_params
      params.require(:song).permit(:name, :plays, :board_id, :artist_id)
    end

    def set_board
      @board = Board.find(params[:board_id])
    end

    def set_song
      @song = Song.find(params[:id])
    end
end
