class RemoveBodyFreqFromLifechart < ActiveRecord::Migration[7.0]
  def change
    remove_column :lifecharts, :body_freq, :integer
    remove_column :lifecharts, :mind_freq, :integer
    remove_column :lifecharts, :love_freq, :integer
    remove_column :lifecharts, :work_freq, :integer
    remove_column :lifecharts, :money_freq, :integer
    remove_column :lifecharts, :play_freq, :integer
  end
end
