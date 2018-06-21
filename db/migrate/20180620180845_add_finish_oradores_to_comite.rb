class AddFinishOradoresToComite < ActiveRecord::Migration[5.2]
  def change
    add_column :comites, :finishOradores, :boolean, :default => false, :null => false
  end
end
