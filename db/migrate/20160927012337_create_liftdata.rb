class CreateLiftdata < ActiveRecord::Migration[5.0]
  def change
    create_table :liftdata do |t|
      t.string :exercise
      t.integer :set
      t.integer :rep
      t.integer :weight

      t.timestamps
    end
  end
end
