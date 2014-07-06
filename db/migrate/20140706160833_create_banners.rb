class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :name
      t.string :location
      t.string :image
      t.string :link
      t.integer :country_id

      t.timestamps
    end
  end
end
