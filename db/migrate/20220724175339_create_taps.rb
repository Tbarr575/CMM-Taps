class CreateTaps < ActiveRecord::Migration[7.0]
  def change
    create_table :taps do |t|
      t.string :grouping
      t.string :floor
      t.string :location
      t.integer :drink_id

      t.timestamps
    end
  end
end
