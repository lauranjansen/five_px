class CreatePixels < ActiveRecord::Migration
  def change
    create_table :pixels do |t|
      t.integer :height
      t.integer :width
      t.string :color

      t.timestamps null: false
    end
  end
end
