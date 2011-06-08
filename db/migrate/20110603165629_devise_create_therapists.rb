class DeviseCreateTherapists < ActiveRecord::Migration
  def self.up
    create_table(:therapists) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      t.confirmable
      t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      t.token_authenticatable
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :therapists, :email,                :unique => true
    add_index :therapists, :reset_password_token, :unique => true
    add_index :therapists, :confirmation_token,   :unique => true
    add_index :therapists, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :therapists
  end
end
