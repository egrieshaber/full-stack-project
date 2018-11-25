class CreateMetalHeds < ActiveRecord::Migration[5.2]
  def change
    create_table :metal_heds do |t|
      t.string :first_name
      t.string :last_name
      t.string :instrument
      t.string :band

      t.timestamps
    end
  end
end
