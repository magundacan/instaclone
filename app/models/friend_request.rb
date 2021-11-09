class FriendRequest < ApplicationRecord
  belongs_to :sender, class_name: "User", foreign_key: "from_id", inverse_of: "sent_requests"
  belongs_to :receiver, class_name: "User", foreign_key: "to_id", inverse_of: "received_requests"
end
