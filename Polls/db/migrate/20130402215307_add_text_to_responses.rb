class AddTextToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :response_text, :text
  end
end
