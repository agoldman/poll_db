class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key(:questions, :polls, dependent: :delete)
    add_foreign_key(:responses, :questions, dependent: :delete)
    add_foreign_key(:answers, :responses, dependent: :delete)
    add_foreign_key(:answers, :users, dependent: :delete)
    add_foreign_key(:poll_takers, :polls, dependent: :delete)
    add_foreign_key(:poll_takers, :users, dependent: :delete)
  end
end
