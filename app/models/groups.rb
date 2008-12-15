class Groups < Sequel::Model
  one_to_many :groups_contacts
end
