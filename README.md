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
| **_name_** | _The name of the service_ | _string_ | **_Required_** |
| **_capacity\_provider\_strategy_** | _The capacity provider <br/> strategy to use for the service_ | _any_ | **_Optional <br/> (Default - [])_** |
| **_cluster_** | _ARN of an ECS cluster_ | _string_ | **_Optional <br/> (Default - null)_** |
| **_deployment\_controller_** | _Configuration block containing <br/> deployment controller configuration_ | _map(string)_ | **_Optional <br/> (Default - {})_** |
| **_deployment\_maximum\_percent_** | _The upper limit of the number <br/> of running tasks that can be <br/> running in a service during a deployment_ | _string_ | **_Optional <br/> (Default - null)_** |
| **_deployment\_minimum\_healthy\_percent_** | _The lower limit of the number <br/> of running tasks that must remain running <br/> and healthy in a service during a deployment_ | _string_ | **_Optional <br/> (Default - null)_** |
| **_desired\_count_** | _The number of instances of the task <br/> definition to place and keep running_ | _string_ | **_Optional <br/> (Default - null)_** |
| **_enable\_ecs\_managed\_tags_** | _Specifies whether to enable <br/> Amazon ECS managed tags for <br/> the tasks within the service_ | _string_ | **_Optional <br/> (Default - null)_** |
| **_health\_check\_grace\_period\_seconds_** | _Seconds to ignore failing load balancer health <br/> checks on newly instantiated tasks to prevent premature shutdown_ | _number_ | **_Optional <br/> (Default - 0)_** |
| **_iam\_role_** | _ARN of the IAM role that allows Amazon ECS to <br/> make calls to your load balancer on your behalf_ | _string_ | **_Optional <br/> (Default - null)_** |
| **_launch\_type_** | _The launch type on which to run your service_ | _string_ | **_Optional <br/> (Default - EC2)_** |
| **_load\_balancer_** | _A load balancer block_ | _any_ | **_Optional <br/> (Default - {})_** |
| **_network\_configuration_** | _The network configuration for the service_ | _any_ | **_Optional <br/> (Default - {})_** |
| **_ordered\_placement\_strategy_** | _Service level strategy rules that are <br/> taken into consideration during task placement_ | _map(string)_ | **_Optional <br/> (Default - any)_** |
| **_propagate\_tags_** | _Specifies whether to propagate the tags from <br/> the task definition or the service to the tasks_ | _string_ | **_Optional <br/> (Default - null)_** |
| **_scheduling\_strategy_** | _The service discovery registries for the service_ | _string_ | **_Optional <br/> (Default - REPLICA)_** |
| **_service\_registries_** | _The platform version on which to run your service_ | _map(string)_ | **_Optional <br/> (Default - {})_** |
| **_tags_** | _Key-value mapping of resource tags_ | _map(string)_ | **_Required_** |
| **_task\_definition_** | _The family and revision (family:revision) or full ARN of <br/> the task definition that you want to run in your service_ | _string_ | **_Required_** |


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