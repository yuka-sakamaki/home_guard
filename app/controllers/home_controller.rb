class HomeController < ApplicationController
  def index
    @boards = params[:tag_id].present? ? Tag.find(params[:tag_id]).boards : Board.all
    @boards = @boards.page(params[:page]).order(updated_at: :DESC)
    all_boards_count = Board.all.length
    finished_boards_count = Board.where(status: true).count
    @archivement = finished_boards_count.to_f / all_boards_count.to_f  * 100
  end
end
