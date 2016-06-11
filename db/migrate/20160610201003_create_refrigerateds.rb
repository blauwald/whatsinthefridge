class CreateRefrigerateds < ActiveRecord::Migration
  def change
    create_table :refrigerateds do |t|
      t.integer :user_id
      t.date :date_of_experation
      t.date :date_of_purchase
      t.string :grocery_name
      t.string :image_of_grocery

      t.timestamps

    end
  end
end
