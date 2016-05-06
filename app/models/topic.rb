class Topic < ActiveRecord::Base
	validates :title, presence: true
	has_many :votes, dependent: :destroy

	belongs_to :owner, class_name: "User", foreign_key: :user_id

	def editable_by?(user)
		user && user == owner
	end
end
