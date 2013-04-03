class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :pole_id
    end
  end
end
