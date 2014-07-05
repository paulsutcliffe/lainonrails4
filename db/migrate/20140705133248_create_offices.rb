class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :image
      t.integer :country_id
      t.string :slug

      t.timestamps
    end
    add_index :offices, :slug, unique: true
  end
end
