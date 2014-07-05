class CreateNoticia < ActiveRecord::Migration
  def change
    create_table :noticia do |t|
      t.string :titulo
      t.string :subtitlo
      t.text :contenido

      t.timestamps
    end
  end
end
