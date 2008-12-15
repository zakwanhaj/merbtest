class GroupsContacts < Sequel::Model
  many_to_one :groups
  many_to_one :contacts
end
