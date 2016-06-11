class CreateFrozens < ActiveRecord::Migration
  def change
    create_table :frozens do |t|
      t.date :user_id
      t.date :date_of_purchase
      t.string :grocery_name
      t.string :image_of_grocery

      t.timestamps

    end
  end
end
