class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :title
      t.text :description
      t.string :image
      t.boolean :active
      t.integer :country_id
      t.string :slug

      t.timestamps
    end
    add_index :opportunities, :slug, unique: true
  end
end
