class AddIndexToUser < ActiveRecord::Migration
  def change
  	add_index :users, :user_id
  end
end
