class CreateNecklaces < ActiveRecord::Migration[6.1]
  def change
    create_table :necklaces do |t|
      t.string :name
      t.string :image_url
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
