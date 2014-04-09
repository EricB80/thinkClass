class AddEventToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :event_id, :integer
  end
end
