# README

## Command Line

Run `rails new california_population -d mysql`
Git add commit

## Atom

Change `database.yml` default username and password to `rails_user` and `password`
- I've already setup this user in MySQL from previous Rails tutorials
Git add commit

## MySQL Workbench

1. Create two databases (schema) using the default development and test database names:
  - `california_population_database`
  - `california_population_test`
2. Add Entry to `rails_user`, select schema dropdown, choose `california_population_database`. Do the same for `_test`
3. Click "Apply" to grant privileges.

## Web Browser

Download the file `CA_DRU_proj_2010-2060.csv` from the [California Open Data Portal](https://data.ca.gov/dataset/california-population-projection-county-age-gender-and-ethnicity)

## Command Line

Run `rails generate model Projection` to create the migration, model, model test, and test fixture file.
Git add commit

## Atom

Open the migration file created from the model generation command.
Add the following code:
```ruby
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
      t.ingeger :population,             null: false

      t.timestamps
    end
  end
end
```
git add commit

## Command Line

Run `rails db:migrate`
git add commit (new schema.rb file)

## Brain

Deterimine how to import CSV files using Rails
Initial search showed Ruby's built in CSV module
Better "Rails-y" option looks like `smarter_csv` option
Not sure if I should just write a migration that uses the SQL from the tutorial though; drawbacks?

