class AddCountryIdToProductsAndTestimonies < ActiveRecord::Migration
  def change
    add_column :products, :country_id, :integer
    add_index :products, :country_id

    add_column :testimonies, :country_id, :integer
    add_index :testimonies, :country_id
  end
end
