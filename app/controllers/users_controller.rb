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

  def me
    user = User.find_by(id: session[:user_id])
    all_boards_count_mypage = Board.where(name: user.name).length
    finished_boards_count_mypage = Board.where(status: true).where(name: user.name).count
    @archivement_mypage = finished_boards_count_mypage.to_f / all_boards_count_mypage.to_f  * 100
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end