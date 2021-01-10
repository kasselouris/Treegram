class AddUniqueIndexToFollows < ActiveRecord::Migration
  def change
    add_index :follows, [:follower_id, :followed_id], unique: true
  end
end
