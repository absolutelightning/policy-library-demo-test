policy "test-policy" {
  source = "./policies/test-policy.sentinel"
  enforcement_level = "advisory"
  params = {
    password_length = 14
  }
}

import "module" "tfresources" {
  source = "./modules/check/check.sentinel"
}