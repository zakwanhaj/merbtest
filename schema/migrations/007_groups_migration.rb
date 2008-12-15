# For details on Sequel migrations see 
# http://sequel.rubyforge.org/
# http://code.google.com/p/ruby-sequel/wiki/Migrations

class GroupsMigration < Sequel::Migration

  def up
    create_table :groups do
      primary_key :id
      foreign_key :group_contact_id, :table => :groups_contacts
      varchar :name, :size => 32
      varchar :email, :size => 32
    end
  end

  def down
    drop_table :groups
  end

end
