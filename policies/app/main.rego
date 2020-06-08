package global.policies.app

import data.global.policies.common.utils

main = x {
  claims := utils.claims_from_jwt("mocktoken")
}

allow_write {
  some i, j
  claims.roles[i] == data.context.AllowedWriterRoles[j]
}
