package rules

import data.dataset

env := "dev"
values := data.global.values[env].v1

main = x {
  x := data.policies.app.main with data.context as values
}
