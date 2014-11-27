class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :name
      t.string :data
      t.string :uri
      t.integer :time_to_live, default: 3600

      t.timestamps null: false
    end
  end
end
