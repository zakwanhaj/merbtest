# For details on Sequel migrations see 
# http://sequel.rubyforge.org/
# http://code.google.com/p/ruby-sequel/wiki/Migrations

class FixMobileColumns < Sequel::Migration

  def up
    alter_table :accounts do
      drop_column :mobile
      add_column :mobile, :varchar , :size=> 15
    end
    alter_table :messages do
      drop_column :from
      drop_column :to
      add_column :from, :varchar , :size=> 15
      add_column :to, :varchar , :size=> 15
    end
  end

  def down
  end

end
