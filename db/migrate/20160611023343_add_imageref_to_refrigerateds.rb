class AddImagerefToRefrigerateds < ActiveRecord::Migration
  def change
    add_column :refrigerateds, :amageref, :string
  end
end
