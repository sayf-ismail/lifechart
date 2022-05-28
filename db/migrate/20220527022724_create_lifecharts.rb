class CreateLifecharts < ActiveRecord::Migration[7.0]
  def change
    create_table :lifecharts do |t|
      t.date :birthday
      t.integer :body_freq
      t.integer :mind_freq
      t.integer :love_freq
      t.integer :work_freq
      t.integer :money_freq
      t.integer :play_freq

      t.timestamps
    end
  end
end
