module Infrastructure

import ..Accounts: Domain, API

using .Domain, .API

using Serialization

export add_to_file, read_from_file

"""
    add_to_file

Add Person's to the datastore.

# Example
```julia
julia> using Accounts

julia> const FILE_ACCOUNTS = "./test_accounts.txt";

julia> address_email = create(EMAIL, "donald@duckcity.com");

julia> donald = create("Donald Duck", [address_email]);

julia> add_to_file(FILE_ACCOUNTS, [donald])
```
"""
function add_to_file(file::String, data::Array{T, 1} where T <: Any)
    io = open(file, "a+")
    [serialize(io, r) for r in data]
    close(io)
end

"""
    read_from_file

Get Person's from the datastore.

# Example
```julia
julia> using Accounts

julia> const FILE_ACCOUNTS = "./test_accounts.txt";

julia> address_email = create(EMAIL, "donald@duckcity.com");

julia> donald = create("Donald Duck", [address_email]);

julia> add_to_file(FILE_ACCOUNTS, [donald])

julia> read_from_file(FILE_ACCOUNTS)
1-element Array{Any,1}:
 Accounts.Domain.Person("10973269859630729578", DateTime("2020-09-28T10:41:17.59"), "Donald Duck", Accounts.Domain.Address[Accounts.Domain.Address("6678746402434096981", DateTime("2020-09-28T10:41:17.277"), EMAIL, "donald@duckcity.com")])
```
"""
function read_from_file(file::String)
    io = open(file, "r")

    r = []
    while !eof(io)
        push!(r, deserialize(io))
    end

    close(io)

    return r
end

end
