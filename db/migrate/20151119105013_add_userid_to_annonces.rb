class AddUseridToAnnonces < ActiveRecord::Migration
  def change
    add_column :annonces, :user_id, :string
  end
end
