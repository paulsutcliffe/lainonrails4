class AddCountryIdToArticles < ActiveRecord::Migration
  def change
    add_reference :articles, :country, index: true
  end
end
