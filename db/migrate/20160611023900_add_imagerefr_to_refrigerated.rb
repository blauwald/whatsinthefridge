class AddImagerefrToRefrigerated < ActiveRecord::Migration
  def change
    add_column :refrigerateds, :imagerefr, :string
  end
end
