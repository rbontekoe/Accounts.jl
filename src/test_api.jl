using Pkg

Pkg.activate(".")

import Accounts: Domain, API

using .Domain, .API

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

println(donald)
