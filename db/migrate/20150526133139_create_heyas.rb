class CreateHeyas < ActiveRecord::Migration
  def change
    create_table :heyas do |t|
      t.float :temperature
      t.float :humidity

      t.timestamps
    end
  end
end
