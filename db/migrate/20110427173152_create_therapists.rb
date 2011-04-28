class CreateTherapists < ActiveRecord::Migration
  def self.up
    create_table :therapists do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username

      t.timestamps
    end
  end

  def self.down
    drop_table :therapists
  end
end
