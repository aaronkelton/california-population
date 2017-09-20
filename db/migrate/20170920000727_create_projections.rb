class CreateProjections < ActiveRecord::Migration[5.1]
  def change
    create_table :projections do |t|
      t.string  :county_code, limit: 10, null: false # converts to VARCHAR(10) and NOT NULL
      t.string  :county,      limit: 45, null: false
      t.integer :date_year,              null: false
      t.integer :race_code,              null: false
      t.text    :race,                   null: false
      t.string  :gender,      limit: 6,  null: false
      t.integer :age,                    null: false
      t.integer :population,             null: false

      t.timestamps
    end
  end
end
