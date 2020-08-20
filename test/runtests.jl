using Accounts
using Test

const FILE_ACCOUNTS = "./test_accounts.txt"

@testset "Accounts.jl" begin
    donald_email = create(EMAIL, "donald@duckcity.com")
    donald = create("Donald Duck", [donald_email])
    add_to_file(FILE_ACCOUNTS, [donald])
    result = read_from_file(FILE_ACCOUNTS)
    first_person = result[1]
    @test first_person.addresses[1].address == "donald@duckcity.com"
    cmd = `rm $FILE_ACCOUNTS` # linux remove file statement
    run(cmd) # remove file
end
