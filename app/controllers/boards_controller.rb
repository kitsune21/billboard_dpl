class BoardsController < ApplicationController
  def index
    @boards = board.ApplicationController
  end

  def show
    @board = board.find(params[:id])
  end

  def new
    @board = board.new
  end

  def create
    @board = board.new(board_params)
    if @board.save
      redirect_to boards_path
    else
      render :new
    end
  end

  def edit
    @board = board.find(params[:id])
  end

  def update
    @board = board.find(params[:id])
    if @board.update(board_params)
      redirect_to boards_path
    else
      render :edit
    end
  end

  def destroy
    board.find(params[:id]).destroy
    redirect_to boards_path
  end

  private
    def board_params 
      params.require(:board).permit(:name)
    end
end
