var documenterSearchIndex = {"docs":
[{"location":"api/#.-API","page":"1 - API","title":"1. API","text":"","category":"section"},{"location":"api/#create","page":"1 - API","title":"create","text":"","category":"section"},{"location":"api/","page":"1 - API","title":"1 - API","text":"create","category":"page"},{"location":"api/#Accounts.API.create","page":"1 - API","title":"Accounts.API.create","text":"create(address_type::AddressType, address::String)::Address\ncreate(name::String, addresses::Array{Address,1})::Person\ncreate(name::String)::Person\n\nCreate an Address or a Person object.\n\nExample\n\njulia> using Accounts\n\njulia> address_email = create(EMAIL, \"donald@duckcity.com\")\nAccounts.Domain.Address(\"7763679977726623090\", Dates.DateTime(\"2020-09-28T10:56:29.461\"), EMAIL, \"donald@duckcity.com\")\n\njulia> donald = create(\"Donald Duck\", [address_email])\nAccounts.Domain.Person(\"14456927583164318539\", Dates.DateTime(\"2020-09-28T10:56:29.997\"), \"Donald Duck\", Accounts.Domain.Address[Accounts.Domain.Address(\"7763679977726623090\", Dates.DateTime(\"2020-09-28T10:56:29.461\"), EMAIL, \"donald@duckcity.com\")])\n\njulia> donald.id\n\"14456927583164318539\"\n\njulia> donald.created\n2020-09-28T10:56:29.997\n\njulia> donald.name\n\"Donald Duck\"\n\njulia> donald.addresses\n1-element Array{Accounts.Domain.Address,1}:\n Accounts.Domain.Address(\"7763679977726623090\", Dates.DateTime(\"2020-09-28T10:56:29.461\"), EMAIL, \"donald@duckcity.com\")\n\n\n\n\n\n","category":"function"},{"location":"infrastructure/#Infrastructure","page":"Infrastructure","title":"Infrastructure","text":"","category":"section"},{"location":"infrastructure/#add_to_file","page":"Infrastructure","title":"add_to_file","text":"","category":"section"},{"location":"infrastructure/","page":"Infrastructure","title":"Infrastructure","text":"add_to_file","category":"page"},{"location":"infrastructure/#Accounts.Infrastructure.add_to_file","page":"Infrastructure","title":"Accounts.Infrastructure.add_to_file","text":"add_to_file\n\nAdd Person's to the datastore.\n\nExample\n\njulia> using Accounts\n\njulia> const FILE_ACCOUNTS = \"./test_accounts.txt\";\n\njulia> address_email = create(EMAIL, \"donald@duckcity.com\");\n\njulia> donald = create(\"Donald Duck\", [address_email]);\n\njulia> add_to_file(FILE_ACCOUNTS, [donald])\n\n\n\n\n\n","category":"function"},{"location":"infrastructure/#read_from_file","page":"Infrastructure","title":"read_from_file","text":"","category":"section"},{"location":"infrastructure/","page":"Infrastructure","title":"Infrastructure","text":"read_from_file","category":"page"},{"location":"infrastructure/#Accounts.Infrastructure.read_from_file","page":"Infrastructure","title":"Accounts.Infrastructure.read_from_file","text":"read_from_file\n\nGet Person's from the datastore.\n\nExample\n\njulia> using Accounts\n\njulia> const FILE_ACCOUNTS = \"./test_accounts.txt\";\n\njulia> address_email = create(EMAIL, \"donald@duckcity.com\");\n\njulia> donald = create(\"Donald Duck\", [address_email]);\n\njulia> add_to_file(FILE_ACCOUNTS, [donald])\n\njulia> read_from_file(FILE_ACCOUNTS)\n1-element Array{Any,1}:\n Accounts.Domain.Person(\"10973269859630729578\", DateTime(\"2020-09-28T10:41:17.59\"), \"Donald Duck\", Accounts.Domain.Address[Accounts.Domain.Address(\"6678746402434096981\", DateTime(\"2020-09-28T10:41:17.277\"), EMAIL, \"donald@duckcity.com\")])\n\n\n\n\n\n","category":"function"},{"location":"#Accounts.jl","page":"Accounts","title":"Accounts.jl","text":"","category":"section"},{"location":"","page":"Accounts","title":"Accounts","text":"Documentation of Accounts.jl","category":"page"}]
}
