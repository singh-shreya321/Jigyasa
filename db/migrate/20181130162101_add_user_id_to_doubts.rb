class AddUserIdToDoubts < ActiveRecord::Migration[5.1]
  def change
    add_reference :doubts, :user, foreign_key: true
  end
end
