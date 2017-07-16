class CreatePupils < ActiveRecord::Migration[5.0]
  def change
    create_table :pupils do |t|
      t.string :name
      t.string :email
      t.string :parent1
      t.string :parent2
      t.string :advisor
      t.string :emailcc
      t.integer :hour
      t.integer :runningTotal
      t.boolean :failing
      t.integer :parentconf
      t.string :message
      t.integer :user_id

      t.timestamps
    end
  end
end
