class CreateImagems < ActiveRecord::Migration
  def self.up
    create_table :imagems do |t|
      t.string :nome
      t.string :avatar_file_name
      t.string :avatar_content_type    
      t.string :avatar_file_size 
      t.timestamps
    end
  end

  def self.down
    drop_table :imagems
  end
end
