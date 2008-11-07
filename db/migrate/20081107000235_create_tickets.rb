class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.string :token, :status, :name, :email, :phone, :domain, :custom
      t.integer :category_id
      t.text :body
      t.boolean :urgent, :default => false
      t.timestamps
    end    
  end

  def self.down
    drop_table :tickets
  end
end
