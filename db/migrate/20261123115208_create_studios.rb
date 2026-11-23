class CreateStudios < ActiveRecord::Migration[8.1]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :country
      t.integer :game_count

      t.timestamps
    end
  end
end
