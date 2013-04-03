class User < ActiveRecord::Base
  attr_accessible :id, :name

  has_many :polls_made, :source => :polls
  has_many :poll_takers
  has_many :polls_taken, :through => :poll_takers, :source => :poll
  has_many :answers, dependent: :delete_all
  has_many :responses, :through => :answers

  validates :name, :presence => true

end