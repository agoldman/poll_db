class PollTaker < ActiveRecord::Base
  attr_accessible :id, :poll_id, :user_id

  belongs_to :user
  belongs_to :poll

  validates :user_id, :poll_id, :presence => true

  validates :poll_id, :uniqueness => { :scope => :user_id,
    :message => "user already answered this poll, geez."}

end