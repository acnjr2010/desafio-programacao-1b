class RemoveInfoToInformation < ActiveRecord::Migration
  def change
    remove_column :information, :info, :string
  end
end
