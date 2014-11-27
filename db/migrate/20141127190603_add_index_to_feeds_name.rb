class AddIndexToFeedsName < ActiveRecord::Migration
  def change
  	add_index :feeds, :name, unique: true
  end
end
