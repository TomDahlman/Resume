class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :what
      t.string :when
      t.string :where

      t.timestamps
    end
  end
end
