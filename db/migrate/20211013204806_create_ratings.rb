class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.string :rank
      t.references :user, null: false, foreign_key: true
      t.references :necklace, null: false, foreign_key: true

      t.timestamps
    end
  end
end
