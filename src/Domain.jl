module Domain

using Dates

export Person, Address, AddressType, EMAIL, WORK

# local function to generate an unique id
create_key(name::String) = string(hash(name * string(time())))

# enumerated type for an address.
@enum AddressType EMAIL WORK

struct Address
  id::String
  created::DateTime
  address_type::AddressType
  address::String
  #constructors
  Address(address_type, address) = new(create_key(address), now(), address_type, address)
end # Address

struct Person
  id::String
  created::DateTime
  name::String
  addresses::Array{Address, 1}
  #constructors
  Person(name) = new(create_key(name), name, [])
  Person(name, addresses) = new(create_key(name), now(), name, addresses)
end

end
