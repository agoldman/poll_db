class CreatePoletakers < ActiveRecord::Migration
  def change
    create_table :poletakers do |t|
      t.integer :pole_id
      t.integer :user_id
    end
  end

end
