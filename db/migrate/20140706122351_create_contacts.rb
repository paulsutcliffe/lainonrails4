class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address
      t.string :district
      t.string :province
      t.string :city
      t.text :message
      t.integer :country_id

      t.timestamps
    end
  end
end
