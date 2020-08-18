class CreateGameResults < ActiveRecord::Migration[5.1]
  def change
    create_table :game_results do |t|
      t.date :gamedate
      t.string :gametitle
      t.string :gameplace
      t.string :gameopponent
      t.string  :gameopponent
      t.string :gameassistant
      
      t.timestamps
    end
  end
end
