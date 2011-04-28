class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :added_by_therapist
      t.string :email
      t.string :username

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
