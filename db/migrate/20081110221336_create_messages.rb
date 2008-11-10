class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |m|
      m.integer :ticket_id, :user_id
      m.string :name
      m.text :body
      m.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
