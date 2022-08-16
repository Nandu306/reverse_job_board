class CreateWorkExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :work_experiences do |t|
      t.string :company
      t.string :role
      t.string :responsibilities
      t.datetime :start_date
      t.datetime :end_date
      t.references :talent_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
