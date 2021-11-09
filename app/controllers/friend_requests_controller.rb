class FriendRequestsController < ApplicationController
  before_action :authenticate_user!

  def create
    @friend_request = current_user.sent_requests.create(friend_request_params)
    redirect_to profiles_path
  end

  private

  def friend_request_params
    params.require(:friend_request).permit(:to_id)
  end
end
