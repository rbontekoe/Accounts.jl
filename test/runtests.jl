using Accounts
using Test

import Accounts: Domain, API
using .Domain, .API

@testset "Domain.jl" begin
    donald_email = Address(EMAIL, "donald@duckcity.com")
    donald = Person("Donald duck", [donald_email])
    email_addresses = filter(x -> x.address_type == EMAIL, donald.addresses)
    @test email_addresses[1].address == "donald@duckcity.com"
end

@testset "API.jl" begin
    donald_email = Address(EMAIL, "donald@duckcity.com")
    donald = Person("Donald Duck", [donald_email])
    email_addresses = filter(x -> x.address_type == EMAIL, donald.addresses)
    @test email_addresses[1].address == "donald@duckcity.com"
end
