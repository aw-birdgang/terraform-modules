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





# lec
````

terraform init 명령어는 Terraform 프로젝트를 초기화하는 과정에서 여러 중요한 작업을 수행합니다. 이 과정은 Terraform 작업을 시작하기 전에 필수적이며, 다음과 같은 작업들을 포함 합니다

1. 프로바이더 초기화
Terraform 코드에서 사용되는 프로바이더(예: AWS, Google Cloud, Azure 등)의 설정을 읽고, 해당 프로바이더의 바이너리를 다운로드 및 설치 합니다. 
이러한 프로바이더 바이너리는 Terraform이 리소스를 생성, 관리, 삭제할 때 필요한 API 호출을 처리하는 데 사용 됩니다.

2. 백엔드 설정
Terraform은 상태 파일(terraform.tfstate)을 사용해서 관리하는 인프라의 현재 상태를 추적 합니다. 
terraform init는 Terraform 구성 파일에서 지정한 백엔드(예: 로컬 파일 시스템, S3 버킷, Azure Blob Storage 등)에 대한 설정을 초기화하고 검증 합니다. 
이 과정은 상태 파일을 저장하고 공유하는 방법을 설정하며, 팀 내에서 인프라 상태의 일관성을 유지하는 데 도움을 줍니다.

3. 모듈 다운로드
Terraform 코드에서 사용하는 모듈이 있을 경우, terraform init 명령은 이러한 모듈의 소스를 찾아서 필요한 파일들을 .terraform 디렉토리에 다운로드하고 준비 합니다. 
모듈은 재사용 가능한 Terraform 코드의 묶음으로, 코드의 재사용성과 관리 효율성을 높여 줍니다.

4. 플러그인 종속성 확인 및 설치
Terraform 프로젝트에서 필요로 하는 플러그인들(주로 프로바이더 플러그인)의 종속성을 확인하고, 필요한 버전의 플러그인을 .terraform 디렉토리에 설치 합니다. 
이 단계는 프로젝트의 호환성을 보장하고, 예상된 대로 인프라가 생성되고 관리될 수 있도록 해줍니다.

5. 환경 검증
Terraform 구성 파일과 초기화 과정에서 설정한 환경을 검증해서, 사용자가 Terraform 명령어를 실행할 준비가 되었는지 확인 합니다. 이는 구성 오류나 잘못된 설정을 사전에 발견하고 수정할 수 있는 기회를 제공 합니다.
간단히 말해서, terraform init는 Terraform 프로젝트의 기반을 마련하고, 모든 필요한 구성 요소가 올바르게 설정되어 프로젝트를 시작할 준비가 되었는지 확인하는 과정 입니다. 
이 명령은 Terraform 작업의 시작점이며, 성공적인 초기화 후에 다른 Terraform 명령어들(plan, apply, destroy 등)을 사용할 수 있게 됩니다.
  
````
