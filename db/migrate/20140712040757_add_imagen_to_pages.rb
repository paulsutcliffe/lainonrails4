class AddImagenToPages < ActiveRecord::Migration
  def change
    add_column :pages, :imagen, :string
  end
end
