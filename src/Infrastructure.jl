module Infrastructure

import ..Accounts: Domain, API

using .Domain, .API

using Serialization

export add_to_file, read_from_file

function add_to_file(file::String, data::Array{T, 1} where T <: Any)
    io = open(file, "a+")
    [serialize(io, r) for r in data]
    close(io)
end

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
