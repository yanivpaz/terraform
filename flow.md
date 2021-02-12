# Terraform quick walk through  

## Create file with price of dev env - default variable 
### git clone sources  
```
files.tf
variables.tf
variables.tfvars
versions.tf
```

### terraform init
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

### terraform plan -out tf.plan
```
#  in addition to output on screen 
tf.plan 
```

###  terraform show tf.plan
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

### terraform apply tf.plan
```
demo-file
terraform.tfstate
```

##  Create file with price of dev env - customized variables
### terraform plan -var-file=variables.tfvars
```
local_file.demo: Refreshing state... [id=b1d5781111d84f7b3fe45a0852e59758cd7a87e5]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # local_file.demo must be replaced
-/+ resource "local_file" "demo" {
      ~ content              = "10" -> "11" # forces replacement
      ~ id                   = "b1d5781111d84f7b3fe45a0852e59758cd7a87e5" -> (known after apply)
        # (3 unchanged attributes hidden)
    }

Plan: 1 to add, 0 to change, 1 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.
```


### terraform apply -var-file=variables.tfvars
```
local_file.demo: Refreshing state... [id=b1d5781111d84f7b3fe45a0852e59758cd7a87e5]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # local_file.demo must be replaced
-/+ resource "local_file" "demo" {
      ~ content              = "10" -> "11" # forces replacement
      ~ id                   = "b1d5781111d84f7b3fe45a0852e59758cd7a87e5" -> (known after apply)
        # (3 unchanged attributes hidden)
    }

Plan: 1 to add, 0 to change, 1 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

local_file.demo: Destroying... [id=b1d5781111d84f7b3fe45a0852e59758cd7a87e5]
local_file.demo: Destruction complete after 0s
local_file.demo: Creating...
local_file.demo: Creation complete after 0s [id=17ba0791499db908433b80f37c5fbc89b870084b]

Apply complete! Resources: 1 added, 0 changed, 1 destroyed.
```

## Check the status 
### terraform state list
```
local_file.demo
```

### terraform state show  local_file.demo
```
# local_file.demo:
resource "local_file" "demo" {
    content              = "11"
    directory_permission = "0777"
    file_permission      = "0777"
    filename             = "./demo-file"
    id                   = "17ba0791499db908433b80f37c5fbc89b870084b"
}
```
