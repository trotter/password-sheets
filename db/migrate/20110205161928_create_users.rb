class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      t.string     :seed
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
