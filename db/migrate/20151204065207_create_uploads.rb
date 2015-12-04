class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :uploads, :user_id
  end
end
