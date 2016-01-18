class CreateAstronauts < ActiveRecord::Migration
  def change
    create_table :astronauts do |t|
      t.string :name
      t.string :image

      t.timestamps null: false
    end
  end
end
