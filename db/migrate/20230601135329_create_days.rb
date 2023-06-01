class CreateDays < ActiveRecord::Migration[7.0]
  def change
    create_table :days do |t|
      t.string :day
      t.belongs_to :week, null: false, foreign_key: true

      t.timestamps
    end
  end
end
