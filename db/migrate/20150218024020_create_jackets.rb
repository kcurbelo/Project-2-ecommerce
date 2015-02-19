class CreateJackets < ActiveRecord::Migration
  def change
    create_table :jackets do |t|
      t.string :name
      t.float :price
      t.integer :size

      t.timestamps null: false
    end
  end
end
