class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :role
      t.string :when
      t.string :where

      t.timestamps
    end
  end
end
