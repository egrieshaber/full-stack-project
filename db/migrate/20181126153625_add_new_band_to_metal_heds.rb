class AddNewBandToMetalHeds < ActiveRecord::Migration[5.2]
  def change
    add_reference :metal_heds, :new_band, foreign_key: true
  end
end
