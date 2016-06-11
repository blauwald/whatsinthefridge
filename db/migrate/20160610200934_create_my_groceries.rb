class CreateMyGroceries < ActiveRecord::Migration
  def change
    create_table :my_groceries do |t|
      t.integer :frozen_id
      t.integer :refrigerated_id
      t.integer :user_id

      t.timestamps

    end
  end
end
