class HomeController < ApplicationController
  def index
    @boards = params[:tag_id].present? ? Tag.find(params[:tag_id]).boards : Board.all
    @boards = @boards.page(params[:page])
    all_boards_count = Board.all.length
    finished_boards_count = Board.where(status: true).count
    @archivement = finished_boards_count / all_boards_count  * 100
  end
end
