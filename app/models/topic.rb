class Topic < ActiveRecord::Base
  validates :title, presence: true
  has_many :votes, dependent: :destroy
  has_many :upvoted_users, through: :votes, source: :user
  has_many :downvoted_users, through: :votes, source: :user
  belongs_to :owner, class_name: "User", foreign_key: :user_id

  def editable_by?(user)
	user && user == owner
  end
end
