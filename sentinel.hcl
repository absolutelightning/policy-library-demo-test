policy "test-policy" {
  source = "./policies/kms-key-rotation-enabled.sentinel"
  enforcement_level = "advisory"
  params = {
    password_length = 14
  }
}

import "module" "report" {
  source = "./modules/report/report.sentinel"
}

import "module" "tfresources" {
  source = "./modules/tfresources/tfresources.sentinel"
}