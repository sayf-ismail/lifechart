class AddNameToLifecharts < ActiveRecord::Migration[7.0]
  def change
    add_column :lifecharts, :name, :string
  end
end
