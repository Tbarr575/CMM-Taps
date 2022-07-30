class CreateDrinks < ActiveRecord::Migration[7.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :company
      t.string :abv
      t.string :flavors

      t.timestamps
    end
  end
end
