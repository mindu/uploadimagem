class AddTagSupport < ActiveRecord::Migration
 def self.up
 	#Table for your Tags 
 	create_table :tags do |t| 
 		t.string :name
	end 
	create_table :taggings do |t| 
		t.integer :tag_id
		#id of tagged object 
		t.integer :taggable_id
		#type of object tagged 
		t.string :taggable_type
	end 
	# Index your tags/taggings 
		add_index :tags, :name 
		add_index :taggings, [:tag_id, :taggable_id, :taggable_type] 
	end
def self.down
	drop_table :taggings
	drop_table :tags
end
end
