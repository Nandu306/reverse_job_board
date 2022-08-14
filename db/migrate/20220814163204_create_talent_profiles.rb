class CreateTalentProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :talent_profiles do |t|
      t.integer :experience_years
      t.string :skills

      t.timestamps
    end
  end
end
