class AddCorrectToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :correct, :binary
  end
end
