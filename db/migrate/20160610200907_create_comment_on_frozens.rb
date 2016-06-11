class CreateCommentOnFrozens < ActiveRecord::Migration
  def change
    create_table :comment_on_frozens do |t|

      t.timestamps

    end
  end
end
