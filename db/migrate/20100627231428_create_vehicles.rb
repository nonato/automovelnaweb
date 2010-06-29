class CreateVehicles < ActiveRecord::Migration
  def self.up
    create_table :vehicles do |t|
      t.string :model
      t.integer :class_type
      t.references :maker

      t.timestamps
    end
    
    add_index :vehicles, [:id, :class_type]
  end
	
  
  
  def self.down
    drop_table :vehicles
  end
end
