class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :topics
  has_many :votes, dependent: :destroy
  has_many :upvoted_topics, through: :votes, source: :topic
  has_many :downvoted_topics, through: :votes, source: :topic
end
