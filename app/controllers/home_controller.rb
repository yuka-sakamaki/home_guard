class HomeController < ApplicationController
  def index
    @boards = params[:tag_id].present? ? Tag.find(params[:tag_id]).boards : Board.all
    @boards = @boards.page(params[:page])
    all = Board.status.length
    @archivement = Board.status.length
  end
end
