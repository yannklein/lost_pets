class CreatePets < ActiveRecord::Migration[7.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :color
      t.string :address
      t.date :found_on

      t.timestamps
    end
  end
end
