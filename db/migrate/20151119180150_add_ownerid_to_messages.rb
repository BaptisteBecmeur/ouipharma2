class AddOwneridToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :owner_id, :integer
  end
end
