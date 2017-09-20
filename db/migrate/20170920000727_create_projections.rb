class CreateProjections < ActiveRecord::Migration[5.1]
  def change
    create_table :projections do |t|

      t.timestamps
    end
  end
end
