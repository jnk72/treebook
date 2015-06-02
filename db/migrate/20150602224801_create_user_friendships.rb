class CreateUserFriendships < ActiveRecord::Migration
  def change
    create_table :user_friendships do |t|

      t.timestamps null: false
    end
  end
end
