class CreateCommentOnRefrigerateds < ActiveRecord::Migration
  def change
    create_table :comment_on_refrigerateds do |t|
      t.integer :user_id
      t.text :body
      t.integer :refrigerated_id

      t.timestamps

    end
  end
end
