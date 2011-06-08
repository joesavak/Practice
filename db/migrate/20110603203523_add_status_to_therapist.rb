class AddStatusToTherapist < ActiveRecord::Migration
  def self.up
    add_column :therapists, :status, :string
  end

  def self.down
    remove_column :therapists, :status
  end
end
