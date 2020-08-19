using Pkg; Pkg.activate(".")

import Accounts: Domain

using .Domain

donald_email = Address(EMAIL, "donald@duckcity.com")
donald_work = Address(WORK,
  """
  Donalds Hardware Store
  attn. Donald Duck
  1190 Seven Seas Dr
  FL 32830 Lake Buena Vista
  USA
  """
)

addresses = [donald_email, donald_work]

donald = Person("Donald Duck", addresses)

email_address = filter(x -> x.address_type == EMAIL, donald.addresses)

println(email_address[1].address)
