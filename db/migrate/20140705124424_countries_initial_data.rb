class CountriesInitialData < ActiveRecord::Migration
  def up
    Country::COUNTRIES.each do |n, c|
      Country.find_or_create_by(name: n, code: c)
    end
  end
end
