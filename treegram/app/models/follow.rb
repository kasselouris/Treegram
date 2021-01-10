class Follow < ActiveRecord::Base
  validates :follower_id, uniqueness: { scope: :followed_id}
end
