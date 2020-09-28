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
```julia
julia> using Accounts

julia> address_email = create(EMAIL, "donald@duckcity.com")
Accounts.Domain.Address("7763679977726623090", Dates.DateTime("2020-09-28T10:56:29.461"), EMAIL, "donald@duckcity.com")

julia> donald = create("Donald Duck", [address_email])
Accounts.Domain.Person("14456927583164318539", Dates.DateTime("2020-09-28T10:56:29.997"), "Donald Duck", Accounts.Domain.Address[Accounts.Domain.Address("7763679977726623090", Dates.DateTime("2020-09-28T10:56:29.461"), EMAIL, "donald@duckcity.com")])

julia> donald.id
"14456927583164318539"

julia> donald.created
2020-09-28T10:56:29.997

julia> donald.name
"Donald Duck"

julia> donald.addresses
1-element Array{Accounts.Domain.Address,1}:
 Accounts.Domain.Address("7763679977726623090", Dates.DateTime("2020-09-28T10:56:29.461"), EMAIL, "donald@duckcity.com")
```
"""
function create end

create(address_type::AddressType, address::String)::Address = Address(address_type, address)

create(name::String, addresses::Array{Address,1})::Person = Person(name, addresses)

create(name::String)::Person = Person(name)

end
