# For details on Sequel migrations see 
# http://sequel.rubyforge.org/
# http://code.google.com/p/ruby-sequel/wiki/Migrations

class ContactsMigration < Sequel::Migration

  def up
    create_table :contacts do
      primary_key :id
      foreign_key :account_id, :table => :accounts
      foreign_key :group_contact_id, :table => :groups_contacts
      varchar :nickname, :size => 32
      varchar :firstname, :size => 32
      varchar :lastname, :size => 32
      varchar :email, :size => 32
      int :phone_number
      int :birthday
      int :birthmonth
      int :birthyear
    end
  end

  def down
    drop_table :contacts
  end

end
