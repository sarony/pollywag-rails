class CreateFrogs < ActiveRecord::Migration
  def change
    create_table :frogs do |t|
      t.string :frogs
      t.string :name
      t.string :color
      t.integer :pond_id
    end
  end
end
