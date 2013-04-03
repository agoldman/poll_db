class Question < ActiveRecord::Base
  attr_accessible :id, :poll_id, :body

  belongs_to :poll
  has_many :responses, dependent: :delete_all

  validates :body, :poll_id, :presence => true
end