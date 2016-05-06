class Vote < ActiveRecord::Base
	belongs_to :topic, counter_cache: :votes_count

	belongs_to :author, class_name: "User", foreign_key: :user_id
 
    def editable_by?(user)
    	user && user == author
    end
end
