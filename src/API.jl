module API

import ..Accounts: Domain

using .Domain

export create

"""
    create(address_type::AddressType, address::String)::Address
    create(name::String, addresses::Array{Address,1})::Person
    create(name::String)::Person

Create an Address or a Person object.

# Example
```Project.toml
julia> address_email = create(EMAIL, "donald@duckcity.com")

julia> donald = create("Donald Duck", [address_email])
```
"""
function create end

create(address_type::AddressType, address::String)::Address = Address(address_type, address)

create(name::String, addresses::Array{Address,1})::Person = Person(name, addresses)

create(name::String)::Person = Person(name)

end
