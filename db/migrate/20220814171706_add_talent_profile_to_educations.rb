class AddTalentProfileToEducations < ActiveRecord::Migration[6.0]
  def change
    add_reference :educations, :talent_profile, null: false, foreign_key: true
  end
end
