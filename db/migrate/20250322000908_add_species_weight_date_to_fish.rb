class AddSpeciesWeightDateToFish < ActiveRecord::Migration[7.2]
  def change
    add_column :fish, :species, :string
    add_column :fish, :weight, :float
    add_column :fish, :date, :string
  end
end
