class AddUseToTopic < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :use, :boolean, :default => false, :null => false
  end
end
