class Vote < ActiveRecord::Base
	belongs_to :topic, counter_cache: :votes_count
	belongs_to :owner, class_name: "User", foreign_key: :user_id
end
