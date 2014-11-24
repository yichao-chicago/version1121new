class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.text :description
      t.date :expiration
      t.string :privacy
      t.integer :user_id

      t.timestamps

    end
  end
end
