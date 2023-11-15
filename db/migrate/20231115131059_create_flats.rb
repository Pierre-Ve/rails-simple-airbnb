class CreateFlats < ActiveRecord::Migration[7.1]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :price_per_night
      t.integer :number_of_guest
      t.string :img_url, :default => 'https://source.unsplash.com/random'

      t.timestamps
    end
  end
end
