class AddListidToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :listid, :string
    add_column :tasks, :integer, :string
  end
end
