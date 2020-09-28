```julia
using Pkg

Pkg.activate(".")

try
    using Accounts
catch e
    Pkg.add(url="https://github.com/rbontekoe/Accounts.jl")
    using Accounts
end

const FILE_ACCOUNTS = "./test_accounts.txt"

donald_email = create(EMAIL, "donald@duckcity.com")

donald_work = create(WORK,
  """
  Donalds Hardware Store
  attn. Donald Duck
  1190 Seven Seas Dr
  FL 32830 Lake Buena Vista
  USA
  """
)

addresses = [donald_email, donald_work]

donald = create("Donald Duck", addresses)

add_to_file(FILE_ACCOUNTS, [donald])

result = read_from_file(FILE_ACCOUNTS)

println(result[first].name)

println(result[first].addresses[first].address)

rm(FILE_ACCOUNTS) # Remove the file
```
