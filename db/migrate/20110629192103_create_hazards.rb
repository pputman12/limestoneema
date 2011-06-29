class CreateHazards < ActiveRecord::Migration
  def change
    create_table :hazards do |t|
      t.string :category
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
