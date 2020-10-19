# Examples

## Example 1: Create, Save and Retrieve Data.
```
using Accounts

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

println(result)
```

## Example 2: Currying and Piping.
```
# Example with currying and piping

using Accounts, DataFrames

const FILE_ACCOUNTS = "./test_accounts.txt"

# declare Currying, see: https://riptutorial.com/julia-lang/example/20261/implementing-currying

curry(f, x) = (xs...) -> f(x, xs...)

save = curry(add_to_file, FILE_ACCOUNTS)

read = curry(read_from_file, FILE_ACCOUNTS)

# end Currying

email = create(EMAIL, "donald@duckcity.com")

donald = create("Donald Duck", [email])

# using Currying

[donald] |> save # How to use it

r = read() |> DataFrame

println(r)

# Remove data file

cmd = `rm $FILE_ACCOUNTS` # linux remove file statement

run(cmd) # execute remove file
```
