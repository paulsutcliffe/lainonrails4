class CreateComputests < ActiveRecord::Migration
  def change
    create_table :computests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :gender
      t.float :height
      t.float :weight
      t.integer :bmi
      t.string :state
      t.string :ideal_weight
      t.integer :country_id

      t.timestamps
    end
  end
end
