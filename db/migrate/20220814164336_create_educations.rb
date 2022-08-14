class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.string :uni_name
      t.string :education_type
      t.string :field_of_study
      t.string :grade
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
