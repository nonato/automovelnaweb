class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
    	
    	# general attributes
      t.string :name
      t.string :email
      t.string :password
      t.boolean :status
      t.integer :class_type
      
      # Customer Attributes
      t.string :name
      t.string :email
      t.string :password
      t.boolean :status
      t.string :home_phone
      t.string :cell_phone
      t.integer :cpf
      t.integer :rg
      t.date :birthday
      t.string :gender

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
