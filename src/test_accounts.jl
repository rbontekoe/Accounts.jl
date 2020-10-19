# Example with currying and piping

using Accounts, DataFrames

const FILE_ACCOUNTS = "./test_accounts.txt"

# declare Currying, see: https://riptutorial.com/julia-lang/example/20261/implementing-currying

curry(f, x) = (xs...) -> f(x, xs...)

add = curry(add_to_file, FILE_ACCOUNTS)

read = curry(read_from_file, FILE_ACCOUNTS)

# end Currying

email = create(EMAIL, "donald@duckcity.com")

donald = create("Donald Duck", [email])

# using Currying

[donald] |> add # How to use it

r = read() |> DataFrame

println(r)

# Remove data file

cmd = `rm $FILE_ACCOUNTS` # linux remove file statement

run(cmd) # remove file
