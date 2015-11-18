class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :name
      t.integer :position
      t.references :user, index: true, foreign_key: true
      t.references :game, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
