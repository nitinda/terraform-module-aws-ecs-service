# _Terraform Module: terraform-module-aws-ecs-service_


## _General_

_This module can be used to deploy a_ **_ECS Service_** _on AWS Cloud Provider......_


---

## _Prerequisites_

_This module needs_ **_Terraform 0.12.23_** _or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).


---

## _Features_

_Below we are able to check the resources that are being created as part of this module call:_

- **_ECS Service_**


---

## _Usage_

## _Using this repo_

_To use this module, add the following call to your code:_

```tf
module "ecs_service" {
  source = "git::https://github.com/nitinda/terraform-module-aws-ecs-service.git?ref=master"

  # Tags
  tags = {
      Project      = "POC"
      Environment  = "prod"
  }
}
```


---

## _Inputs_

_The variables required in order for the module to be successfully called from the deployment repository are the following:_

|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** |
|:----|:----|-----:|:---:|
| **_tags_** | _Key-value mapping of resource tags_ | _map(string)_ | **_Required_** |

---


## _Outputs_

### _General_

_This module has the following outputs:_


- **_id_**
- **_name_**
- **_cluster_**


### _Usage_

_In order for the variables to be accessed at module level please use the syntax below:_

```tf
module.<module_name>.<output_variable_name>
```


_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
"${data.terraform_remote_state.<layer_name>.<output_variable_name>}"
```


---


## _Authors_

_Module maintained by Module maintained by the -_ **_Nitin Das_**