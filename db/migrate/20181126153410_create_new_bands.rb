class CreateNewBands < ActiveRecord::Migration[5.2]
  def change
    create_table :new_bands do |t|
      t.string :band_name

      t.timestamps
    end
  end
end
