# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :confirmable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: {case_sensitive: false}

  has_many :photos, dependent: :delete_all
  has_many :comments, dependent: :delete_all
  has_many :sent_requests, class_name: "FriendRequest", foreign_key: "from_id", inverse_of: "sender"
  has_many :received_requests, class_name: "FriendRequest", foreign_key: "to_id", inverse_of: "receiver"
end
