using Documenter
using Accounts
using Dates

makedocs(;
    modules=[Accounts],
    format=Documenter.HTML(),
    pages=[
        "Accounts" => "index.md",
        "1 - API" => "api.md",
        "2 - Infrastructure" => "infrastructure.md",
        "3 - Examples" => "example.md"
    ],
    sitename="Accounts.jl",
)
