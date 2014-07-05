class CreateTestimonies < ActiveRecord::Migration
  def change
    create_table :testimonies do |t|
      t.string :name
      t.text :content
      t.string :testimony_type
      t.string :image
      t.string :video_link
      t.string :slug

      t.timestamps
    end
  end
end
