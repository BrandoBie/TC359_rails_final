class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.text :name
      t.integer :age
      t.text :breed
      t.boolean :spade_neutered
      t.date :adopted

      t.timestamps
    end
  end
end
