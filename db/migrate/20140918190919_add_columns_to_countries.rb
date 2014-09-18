class AddColumnsToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :facebook, :string
    add_column :countries, :email, :string
    add_column :countries, :telefono, :string
  end
end
