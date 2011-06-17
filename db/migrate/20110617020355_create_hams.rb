class CreateHams < ActiveRecord::Migration
  def self.up
    create_table :hams do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :hams
  end
end
