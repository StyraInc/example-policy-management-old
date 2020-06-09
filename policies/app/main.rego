package global.policies.app

import data.global.policies.common.utils

# Extract claims from JWT. In a real appliation, this might come from input.
claims := utils.claims_from_jwt("mock_token")

# Check whether write is allowed, based on the JWT claims and the data.context
# for this environment.
allow_write {
  some i, j
  claims.roles[i] == data.context.AllowedWriterRoles[j]
}

# Main entry point to produce map of entitlements.
main = x {
  x := {
    "AllowWrite": allow_write
  }
}
