class CreateClientSessions < ActiveRecord::Migration
  def self.up
    create_table :client_sessions do |t|
      t.integer :client_id
      t.integer :therapist_id
      t.text :notes
      t.datetime :visit_dt

      t.timestamps
    end
  end

  def self.down
    drop_table :client_sessions
  end
end
