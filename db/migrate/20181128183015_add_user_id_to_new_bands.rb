class AddUserIdToNewBands < ActiveRecord::Migration[5.2]
  def change
    add_reference :new_bands, :user, foreign_key: true
  end
end
