class AddInfoToInformation < ActiveRecord::Migration
  def change
    add_column :information, :info, :string
  end
end
