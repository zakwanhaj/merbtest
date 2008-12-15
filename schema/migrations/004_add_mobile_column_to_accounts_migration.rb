# For details on Sequel migrations see 
# http://sequel.rubyforge.org/
# http://code.google.com/p/ruby-sequel/wiki/Migrations

class AddMobileColumnToAccountsMigration < Sequel::Migration

  def up
    alter_table :accounts do
      add_column :mobile, :int
    end
  end

  def down
    alter_table :accounts do
      drop_column :mobile
    end
  end



end
