class AddDefaultValueToFriendRequests < ActiveRecord::Migration[6.1]
  def change
    change_column :friend_requests, :status, :string, default: "pending"
  end
end
