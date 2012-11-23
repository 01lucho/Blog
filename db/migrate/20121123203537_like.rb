class Like < ActiveRecord::Migration
   def change
    create_table :likes do |t|
      t.references :comment
      t.references :user
      t.timestamps
    end
    add_index :likes, [:comment_id, :user_id]
  end
end
