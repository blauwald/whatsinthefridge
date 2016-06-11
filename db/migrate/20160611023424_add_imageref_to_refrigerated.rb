class AddImagerefToRefrigerated < ActiveRecord::Migration
  def change
    add_column :refrigerateds, :amageref, :string
  end
end
