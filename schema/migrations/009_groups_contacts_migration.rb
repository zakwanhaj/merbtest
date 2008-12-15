# For details on Sequel migrations see 
# http://sequel.rubyforge.org/
# http://code.google.com/p/ruby-sequel/wiki/Migrations

class GroupsContactsMigration < Sequel::Migration

  def up
    create_table :groups_contacts do
      primary_key :id
      foreign_key :group_id, :table => :groups
      foreign_key :contact_id, :table => :contacts
    end
  end

  def down
    drop_table :groups_contacts
  end

end
