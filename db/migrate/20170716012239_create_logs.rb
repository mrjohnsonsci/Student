class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.integer :pupil_id
      t.string :messagetype
      t.string :content

      t.timestamps
    end
  end
end
