class FixMorePollMisspellings < ActiveRecord::Migration
  def change
    rename_column(:questions, :pole_id, :poll_id)
  end
end
