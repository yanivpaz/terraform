variable "plans" {
  type = map
  default = {
    "5USD"  = "1xCPU-1GB"
    "10USD" = "1xCPU-2GB"
    "20USD" = "2xCPU-4GB"
  }
}


variable "storage_sizes" {
  type = map
  default = {
    "1xCPU-1GB"  = "25"
    "1xCPU-2GB"  = "50"
    "2xCPU-4GB"  = "80"
  }
}
