class CreatePosts < ActiveRecord::Migration
  def self.up
    drop_table :posts
    create_table :posts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
