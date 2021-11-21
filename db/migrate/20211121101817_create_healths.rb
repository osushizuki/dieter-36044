class CreateHealths < ActiveRecord::Migration[6.0]
  def change
    create_table :healths do |t|
      t.integer :every_weight, null: false
      t.timestamps
    end
  end
end
