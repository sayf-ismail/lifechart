class AddUserForeignKeyToLifechart < ActiveRecord::Migration[7.0]
  def change
    add_reference :lifecharts, :user, foreign_key: true
  end
end
