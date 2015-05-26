class AddDatetime < ActiveRecord::Migration
  def up
    add_column :heyas, :date, :datetime
  end

  def down
    remove_column :heyas, :date, :datetime
  end
end
