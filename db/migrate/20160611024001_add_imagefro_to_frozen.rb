class AddImagefroToFrozen < ActiveRecord::Migration
  def change
    add_column :frozens, :imagefro, :string
  end
end
