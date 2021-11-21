class ChangeDatatypeEveryWeightOfHealths < ActiveRecord::Migration[6.0]
  def change
    change_column :healths, :every_weight, :float
  end
end
