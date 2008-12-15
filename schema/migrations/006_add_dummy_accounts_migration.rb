# For details on Sequel migrations see 
# http://sequel.rubyforge.org/
# http://code.google.com/p/ruby-sequel/wiki/Migrations

class AddDummyAccountsMigration < Sequel::Migration

  def up
    Account.create(:name=>"khelll",:mobile=>"00963933123456")
    Account.create(:name=>"zakwan",:mobile=>"00963955987654")
  end

  def down
  end

end
