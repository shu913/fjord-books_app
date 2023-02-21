class FollowsController < ApplicationController
  def create
    if current_user.follow(params[:id])
      redirect_to user_path, notice: 'ユーザーのフォローに成功しました。'
    else
      redirect_to user_path, alert: 'ユーザーのフォローに失敗しました。'
    end
  end

  def destroy
    if current_user.unfollow(params[:id])
      redirect_to user_path, notice: 'ユーザーのフォロー解除に成功しました。'
    else
      redirect_to user_path, alert: 'ユーザーのフォロー解除に失敗しました。'
    end
  end
end
