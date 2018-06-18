class CreateDelegados < ActiveRecord::Migration[5.2]
  def change
    create_table :delegados do |t|
      t.string :pais
      t.references :comite, foreign_key: true

      t.timestamps
    end
  end
end
