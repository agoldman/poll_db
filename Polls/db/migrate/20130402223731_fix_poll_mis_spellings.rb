class FixPollMisSpellings < ActiveRecord::Migration
  def change
    rename_column(:poletakers, :pole_id, :poll_id)
    rename_table(:poletakers, :poll_takers)
  end
end
