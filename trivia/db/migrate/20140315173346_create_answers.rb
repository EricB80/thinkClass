class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :ans_no
      t.text :ans_text

      t.timestamps
    end
  end
end
