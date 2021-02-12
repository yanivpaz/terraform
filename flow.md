# Terraform Quick walk through  

## git clone sources  
```
files.tf
variables.tf
variables.tfvars
versions.tf
```

## terraform init
```
./providers
./providers/registry.terraform.io
./providers/registry.terraform.io/hashicorp
./providers/registry.terraform.io/hashicorp/aws
./providers/registry.terraform.io/hashicorp/aws/3.7.0
./providers/registry.terraform.io/hashicorp/aws/3.7.0/linux_amd64
./providers/registry.terraform.io/hashicorp/aws/3.7.0/linux_amd64/terraform-provider-aws_v3.7.0_x5
./providers/registry.terraform.io/hashicorp/local
./providers/registry.terraform.io/hashicorp/local/2.0.0
./providers/registry.terraform.io/hashicorp/local/2.0.0/linux_amd64
./providers/registry.terraform.io/hashicorp/local/2.0.0/linux_amd64/terraform-provider-local_v2.0.0_x5
.terraform.lo
```


##  terraform show tf.plan
```
An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # local_file.demo will be created
  + resource "local_file" "demo" {
      + content              = "10"
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "./demo-file"
      + id                   = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.
```


## terraform plan -out tf.plan
```
tf.plan
```


## terraform apply tf.plan
```
demo-file
terraform.tfstate
```
