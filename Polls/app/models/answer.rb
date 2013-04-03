class Answer < ActiveRecord::Base
  attr_accessible :id, :user_id, :response_id

  belongs_to :user
  belongs_to :response

  validates :user_id, :response_id, :presence => true
  validates :response_id, :uniqueness => { :scope => :user_id,
    :message => "user already entered this response"}
end