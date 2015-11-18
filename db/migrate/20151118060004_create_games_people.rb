class CreateGamesPeople < ActiveRecord::Migration
  def change
    create_table :games_people do |t|
      t.references :game, index: true, foreign_key: true
      t.references :person, index: true, foreign_key: true
    end
  end
end
