class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :description
      t.integer :author_id
      t.boolean :moderated
      t.boolean :posted
      
      t.timestamps null: false
    end
  end
end
