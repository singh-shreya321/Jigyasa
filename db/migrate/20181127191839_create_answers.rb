class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :ansno
      t.text :body
      t.references :doubt, foreign_key: true

      t.timestamps
    end
  end
end
