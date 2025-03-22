class CreateFish < ActiveRecord::Migration[7.2]
  def change
    create_table :fish do |t|
      t.timestamps
    end
  end
end
