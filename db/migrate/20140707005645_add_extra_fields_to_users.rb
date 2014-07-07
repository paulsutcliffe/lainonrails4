class AddExtraFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :age, :integer
    add_column :users, :phone, :string
    add_column :users, :country_id, :integer
    add_column :users, :height, :float
    add_column :users, :weight, :float
    add_column :users, :smoker, :boolean
    add_column :users, :hobbies, :string
    add_column :users, :dieted, :boolean
    add_column :users, :place_of_diet, :string
  end
end
