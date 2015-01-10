class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :course_id
      t.string :question
      t.string :options
      t.string :answer
      t.timestamps
    end
  end
end
