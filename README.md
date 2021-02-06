# Terraform

## Quick install on WSL2
```
 sudo apt  install unzip -y
 curl -O https://releases.hashicorp.com/terraform/0.14.6/terraform_0.14.6_linux_amd64.zip
 unzip terrafor*
 sudo mv terraform /usr/local/bin
 rm -f terra*linux*zip
```

## Aliases 
```
alias t=terraform
alias tp="t plan -input=false"
alias ta="t apply -auto-approve"
alias td="t destroy -auto-approve"


```
## Running the examples 
```
export TF_CLI_ARGS=" -input=false -auto-approve"
export TF_LOG=trace
terraform destroy 
```


## Links
https://github.com/ned1313/Getting-Started-Terraform  
https://github.com/ned1313/Deep-Dive-Terraform  
https://github.com/ned1313/Implementing-Terraform-on-AWS  


## CFN alternative 
https://github.com/aws-cloudformation/rain
