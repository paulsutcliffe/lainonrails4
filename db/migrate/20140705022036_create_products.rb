class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :video1
      t.string :video2
      t.string :video3
      t.string :slug

      t.timestamps
    end
    add_index :products, :slug, unique: true
  end
end
