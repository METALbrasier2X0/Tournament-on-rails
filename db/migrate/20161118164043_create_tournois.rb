class CreateTournois < ActiveRecord::Migration[5.0]
  def change
    create_table :tournois do |t|
      t.string :name
      t.string :game
      t.date :date
      t.time :time
      t.integer :players

      t.timestamps
    end
  end
end
