<!--  -->
<!--
-->





## aws
````

$ aws --version
$ aws configure sso
$ aws sso login --profile your-profile-name
$ aws configure sso --profile your-profile-name
$ aws s3 ls --profile your-profile-name

$ cat ~/.aws/config
[default]
region = ap-northeast-2
output = json
[profile dinoh]
sso_start_url = 
sso_region = ap-northeast-2
sso_account_id = 
sso_role_name = AWSOrganizationsFullAccess
region = ap-northeast-2
output = json

````


# key pair gen
````
$ mkdir key
$ cd key
$ ssh-keygen -t rsa -b 2048 -f mykey

````


# cmd
````
https://developer.hashicorp.com/terraform/cli/run
https://developer.hashicorp.com/terraform/language/data-sources


{
  "sso_start_url": "",
  "sso_region": "ap-northeast-2",
  "sso_registration_scopes": "sso:account:access"
}



$ terraform init
$ ssh-keygen -f key-name
$ terraform plan
$ terraform apply
$ terraform destroy

````


# sequence
````
1. VPC
2. RDS
  
````


# cloud ec2 images
````

https://cloud-images.ubuntu.com/locator/ec2/

````


# ref
````
https://registry.terraform.io/browse/providers

https://registry.terraform.io/providers/hashicorp/aws/latest/docs
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance


````


# ref > aws_iam_role
````

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy


````




# ref > aws_iam_role

````
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codestarconnections_connection
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role

````




# ref > source
````

https://github.com/hashicorp/terraform-provider-aws
https://github.com/hashicorp/terraform-provider-aws/tree/main/examples/networking

````


# ref > link
````
https://docs.aws.amazon.com/codepipeline/latest/userguide/security-iam.html#how-to-update-role-new-services

````


# run
````

$ terraform import aws_codestarconnections_connection.test-connection arn:aws:codestar-connections:us-west-1:0123456789:connection/79d4d357-a2ee-41e4-b350-2fe39ae59448

terraform apply -var-file="secret.tfvars" -var-file="production.tfvars"
  
````


