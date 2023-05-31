class CreateMuscleGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :muscle_groups do |t|
      t.string :name
      t.integer :sets
      t.belongs_to :workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
