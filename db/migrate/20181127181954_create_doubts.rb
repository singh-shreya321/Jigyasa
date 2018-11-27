class CreateDoubts < ActiveRecord::Migration[5.1]
  def change
    create_table :doubts do |t|
      t.text :title
      t.text :body
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
