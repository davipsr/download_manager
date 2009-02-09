class CreateArchives < ActiveRecord::Migration
  def self.up
    create_table :archives do |t|
      t.references :directory
      t.timestamps
    end
    add_index :archives, :directory_id
  end

  def self.down
    drop_table :archives
  end
end
