resource "null_resource" "test" {
  for_each = {
    myprop = "mypropvalue"
  }
}

module "mymodule" {
  source = "./modules/mymodule"

  myvar = null_resource.test
}
