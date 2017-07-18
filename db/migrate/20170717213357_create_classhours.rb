class CreateClasshours < ActiveRecord::Migration[5.0]
  def change
    create_table :classhours do |t|
      t.integer :hour
      t.integer :pupil_id
      t.integer :user_id

      t.timestamps
    end
  end
end
