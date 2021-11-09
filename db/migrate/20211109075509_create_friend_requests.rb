class CreateFriendRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :friend_requests do |t|
      t.references :from, null: false, foreign_key: {to_table: :users}
      t.references :to, null: false, foreign_key: {to_table: :users}
      t.string :status

      t.timestamps
    end
  end
end
