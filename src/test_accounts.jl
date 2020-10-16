# Example with currying and piping

using Pkg

Pkg.activate(".")

using Accounts

const FILE_ACCOUNTS = "./test_accounts.txt"

# Currying, see: https://riptutorial.com/julia-lang/example/20261/implementing-currying

curry(f, x) = (xs...) -> f(x, xs...)

save = curry(add_to_file, FILE_ACCOUNTS)

email = create(EMAIL, "donald@duckcity.com")

donald = create("Donald Duck", [email])

[donald] |> save # How to use it

println(read_from_file(FILE_ACCOUNTS))

cmd = `rm $FILE_ACCOUNTS` # linux remove file statement

run(cmd) # remove file
