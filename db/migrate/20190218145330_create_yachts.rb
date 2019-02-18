class CreateYachts < ActiveRecord::Migration[5.2]
  def change
    create_table :yachts do |t|
      t.string :name
      t.string :description
      t.integer :price_per_day
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
