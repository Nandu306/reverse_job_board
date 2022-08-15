class AddStatusToTalentProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :talent_profiles, :status, :integer
  end
end
