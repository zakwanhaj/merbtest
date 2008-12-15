# For details on Sequel migrations see 
# http://sequel.rubyforge.org/
# http://code.google.com/p/ruby-sequel/wiki/Migrations

class AddMessagesTableMigration < Sequel::Migration

  def up
    create_table :messages do
      primary_key :id
      varchar :from, :size => 32
      varchar :to, :size => 32
      text :body
      timestamp :created_at
      foreign_key :account_id, :table => :accounts
    end
  end

  def down
    drop_table :posts
  end


end
