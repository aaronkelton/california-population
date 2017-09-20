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

I tried [How to seed a Rails database with a CSV file](https://gist.github.com/arjunvenkat/1115bc41bf395a162084), but GitHub won't allow a file larger than 100 Mb:
```bash
aaron$ git push -u origin master
Counting objects: 7, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (7/7), done.
Writing objects: 100% (7/7), 17.35 MiB | 8.90 MiB/s, done.
Total 7 (delta 2), reused 0 (delta 0)
remote: Resolving deltas: 100% (2/2), completed with 1 local object.
remote: error: GH001: Large files detected. You may want to try Git Large File Storage - https://git-lfs.github.com.
remote: error: Trace: f3d404221deb2415e5de676b62eed0f7
remote: error: See http://git.io/iEPt8g for more information.
remote: error: File lib/seeds/CA_DRU_proj_2010-2060.csv is 234.09 MB; this exceeds GitHub's file size limit of 100.00 MB
To https://github.com/chemturion/california-population.git
 ! [remote rejected] master -> master (pre-receive hook declined)
error: failed to push some refs to 'https://github.com/chemturion/california-population.git'
```

I guess I could try doing the seeding, and then delete or add the original CSV file to my .gitignore. Be sure to [view your timestamp history to report on time it takes](https://www.cyberciti.biz/faq/unix-linux-bash-history-display-date-time/).

## Alternatives
- [How to Import Millions Records via ActiveRecord Within Minutes Not Hours](http://ruby-journal.com/how-to-import-millions-records-via-activerecord-within-minutes-not-hours/)
- [smarter_csv](https://github.com/tilo/smarter_csv)
