variable "env_type" {
  type = map
  default = {
    "dev"  = "dev_price"
    "uat" = "uat_price"
    "prod" = "prod_price"
  }
}


variable "env_price" {
  type = map
  default = {
    "dev_price"  = "10"
    "uat_price"  = "20"
    "prod_price"  = "30"
  }
}
