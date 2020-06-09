class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :nickname
      t.string :science_name
      t.string :origin
      t.string :type
      t.text :advice
      t.text :story
      t.references :garden, null: false, foreign_key: true

      t.timestamps
    end
  end
end
