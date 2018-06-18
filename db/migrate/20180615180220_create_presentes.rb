class CreatePresentes < ActiveRecord::Migration[5.2]
  def change
    create_table :presentes do |t|
      t.references :pais
      t.references :comite

      t.timestamps
    end
  end
end
