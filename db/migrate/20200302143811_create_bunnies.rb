class CreateBunnies < ActiveRecord::Migration[5.2]
  def change
    create_table :bunnies do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :description
      t.string :address
      t.integer :price_per_day, default: 0
      t.string :fur
      t.string :personnality
      t.string :skill
      t.string :weight
      t.string :size
      t.integer :cleanliness

      t.timestamps
    end
  end
end
