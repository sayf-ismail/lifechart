class AddNewColumnsToLifecharts < ActiveRecord::Migration[7.0]
  def change
    add_column :lifecharts, :activity, :text
    add_column :lifecharts, :weekly_freq_before, :integer
    add_column :lifecharts, :weekly_freq_after, :integer
  end
end
