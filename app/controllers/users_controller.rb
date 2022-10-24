class UsersController < ApplicationController
  def new
    @user = User.new(flash[:user])
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to mypage_path
    else
      redirect_to :back, flash: {
        user: user,
        error_messages: user.errors.full_messages
      }
    end
  end

  #TODO: add users archivement calc
  def me
    all_boards_count = Board.all.length
    finished_boards_count = Board.where(status: true).count
    @archivement = finished_boards_count.to_f / all_boards_count.to_f  * 100
    # all_boards_count = Board.where(name: 'y').length
    # finished_boards_count = Board.where(status: true).where(name: 'y').count
    # @archivement = finished_boards_count.to_f / all_boards_count.to_f  * 100
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end