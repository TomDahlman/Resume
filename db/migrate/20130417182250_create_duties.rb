class CreateDuties < ActiveRecord::Migration
  def change
    create_table :duties do |t|
      t.string :description
      t.integer :experience_id

      t.timestamps
    end
  end
end
