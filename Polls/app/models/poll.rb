class Poll < ActiveRecord::Base
  attr_accessible :id, :user_id, :name

  belongs_to :user
  has_many :questions, dependent: :delete_all
  has_many :poll_takers
  has_many :takers, :through => :poll_takers, :source => :user

  validates :user_id, :name, :presence => true
end