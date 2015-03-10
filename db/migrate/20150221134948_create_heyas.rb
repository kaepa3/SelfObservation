class CreateHeyas < ActiveRecord::Migration
  def change
    create_table :heyas do |t|
      t.integer :ondo
      t.integer :shitudo

      t.timestamps
    end
  end
end
