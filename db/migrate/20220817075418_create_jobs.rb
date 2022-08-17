class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :roles_and_responsibilities
      t.string :salary
      t.string :must_have_skills
      t.string :nice_to_have_skills
      t.integer :exp_level
      t.references :company_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
