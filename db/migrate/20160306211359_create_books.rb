class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.integer :category_id
      t.string :type
      
      t.timestamps null: false
    end
  end
end
