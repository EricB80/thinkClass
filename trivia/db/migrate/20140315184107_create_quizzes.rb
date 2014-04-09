class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.integer :location_id
      t.string :name
      t.integer :no_rounds
      t.integer :master_id

      t.timestamps
    end
  end
end
