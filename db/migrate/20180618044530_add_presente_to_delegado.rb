class AddPresenteToDelegado < ActiveRecord::Migration[5.2]
  def change
    add_column :delegados, :presente, :boolean, :default => false, :null => false
  end
end
