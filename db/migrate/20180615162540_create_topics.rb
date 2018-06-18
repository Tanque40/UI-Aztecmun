class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.references :comite, foreign_key: true
      t.text :topico

      t.timestamps
    end
  end
end
