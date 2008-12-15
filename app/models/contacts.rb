class Contacts < Sequel::Model
  many_to_one :accounts
  one_to_many :groups_contacts
end
