# For details on Sequel migrations see 
# http://sequel.rubyforge.org/
# http://code.google.com/p/ruby-sequel/wiki/Migrations

class AddSavedColumnToMessagesMigration < Sequel::Migration

   def up
      alter_table :messages do
        add_column :saved, :tinyint, :default => 0
      end
    end

    def down
      alter_table :messages do
        drop_column :saved
      end
    end


end
