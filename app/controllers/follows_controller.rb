class FollowsController < ApplicationController
  def create
    @user = current_user.follow(params[:id])
    if @user.save
      redirect_to user_path, notice: 'ユーザーのフォローに成功しました。'
    else
      redirect_to user_path, alert: 'ユーザーのフォローに失敗しました。'
    end
  end

  def destroy
    @user = current_user.unfollow(params[:id])
    if @user
      redirect_to user_path, notice: 'ユーザーのフォロー解除に成功しました。'
    else
      redirect_to user_path, alert: 'ユーザーのフォロー解除に失敗しました。'
    end
  end
end
