# For details on Sequel migrations see 
# http://sequel.rubyforge.org/
# http://code.google.com/p/ruby-sequel/wiki/Migrations

class AddAccountsTableMigration < Sequel::Migration

   def up
    create_table :accounts do
      primary_key :id
      varchar :name, :size => 40
    end
  end

  def down
    drop_table :accounts
  end

end
