
variable "name" {
  description = "The name of the service"
}

variable "capacity_provider_strategy" {
  description = "The capacity provider strategy to use for the service"
  default     = {}
  type        = any
}

variable "cluster" {
  description = "ARN of an ECS cluster"
  default     = null
}

variable "deployment_controller" {
  description = "Configuration block containing deployment controller configuration"
  default     = {}
  type        = map(string)
}

variable "deployment_maximum_percent" {
  description = "The upper limit of the number of running tasks that can be running in a service during a deployment"
  default     = null
}

variable "deployment_minimum_healthy_percent" {
  description = "The lower limit of the number of running tasks that must remain running and healthy in a service during a deployment"
  default     = null
}

variable "desired_count" {
  description = "The number of instances of the task definition to place and keep running"
  default     = null
}

variable "enable_ecs_managed_tags" {
  description = "Specifies whether to enable Amazon ECS managed tags for the tasks within the service"
  default     = null
}

variable "health_check_grace_period_seconds" {
  description = "Seconds to ignore failing load balancer health checks on newly instantiated tasks to prevent premature shutdown"
  default     = 0
  type        = number
}

variable "iam_role" {
  description = "ARN of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf"
  default     = null
}

variable "launch_type" {
  description = "The launch type on which to run your service"
  default     = "EC2"
}

variable "load_balancer" {
  description = "A load balancer block"
  default     = {}
  type        = any
}

variable "network_configuration" {
  description = "The network configuration for the service"
  default     = {}
  type        = any
}

variable "ordered_placement_strategy" {
  description = "Service level strategy rules that are taken into consideration during task placement"
  default     = {}
  type        = map(string)
}

variable "placement_constraints" {
  description = "rules that are taken into consideration during task placement"
  default     = {}
  type        = map(string)
}

variable "platform_version" {
  description = "The platform version on which to run your service"
  default     = null
}

variable "propagate_tags" {
  description = "Specifies whether to propagate the tags from the task definition or the service to the tasks"
  default     = null
}

variable "scheduling_strategy" {
  description = "The scheduling strategy to use for the service"
  default     = "REPLICA"
}

variable "service_registries" {
  description = "The service discovery registries for the service"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}

variable "task_definition" {
  description = "The family and revision (family:revision) or full ARN of the task definition that you want to run in your service"
}