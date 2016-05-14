class Vote < ActiveRecord::Base
	belongs_to :user
	belongs_to :topic, counter_cache: :votes_count
    validates_uniqueness_of :topic_id, scope: :user_id

	belongs_to :author, class_name: "User", foreign_key: :user_id
 
    def editable_by?(user)
    	user && user == author
    end
end
