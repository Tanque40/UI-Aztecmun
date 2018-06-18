class CreateComites < ActiveRecord::Migration[5.2]
  def change
    create_table :comites do |t|
      t.string :comite

      t.timestamps
    end
  end
end
