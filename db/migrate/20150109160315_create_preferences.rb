class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.integer :course, default: 0
      t.string :company
      t.timestamps
    end
  end
end
