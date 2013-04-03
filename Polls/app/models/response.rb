class Response < ActiveRecord::Base
  attr_accessible :id, :question_id, :response_text

  belongs_to :question
  has_many :answers
  has_many :users, :through => :answers

  validates :question_id, :response_text, :presence => true
end