package global.common.utils

# https://test.styra.com/v1/docs/tutorials/envoy/#jwt-verification-and-inspection

claims_from_jwt(token) = x {
  # mocked data
  x := {
    "name": "Alicia Smithsonian",
    "roles": [
      "reader",
      "writer"
    ],
    "username": "alice"
  }
}
