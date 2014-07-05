class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
    add_index :countries, :code
  end
end
