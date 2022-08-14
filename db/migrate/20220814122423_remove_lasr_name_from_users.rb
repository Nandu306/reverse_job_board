class RemoveLasrNameFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :lasr_name, :string
  end
end
