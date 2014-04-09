class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :round
      t.text :question_text

      t.timestamps
    end
  end
end
