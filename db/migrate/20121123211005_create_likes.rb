class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string, :comment_id
      t.string :userid

      t.timestamps
    end
  end
end
