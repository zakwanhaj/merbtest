class Message < Sequel::Model
  many_to_one :accounts
end
