resource "aws_ecs_service" "ecs_service" {
  name = var.name
  
  dynamic "capacity_provider_strategy" {
    for_each = length(keys(var.capacity_provider_strategy)) == 0 ? [] : [var.capacity_provider_strategy]
    content {
      base              = lookup(capacity_provider_strategy.value, "base", null)
      capacity_provider = capacity_provider_strategy.value.capacity_provider
      weight            = lookup(capacity_provider_strategy.value, "weight", null)
    }
  }

  cluster = var.cluster

  dynamic "deployment_controller" {
    for_each = length(keys(var.deployment_controller)) == 0 ? [] : [var.deployment_controller]
    content {
      type = lookup(deployment_controller.value, "type", null)
    }
  }

  deployment_maximum_percent         = var.deployment_maximum_percent
  deployment_minimum_healthy_percent = var.deployment_minimum_healthy_percent
  desired_count                      = var.desired_count
  enable_ecs_managed_tags            = var.enable_ecs_managed_tags
  health_check_grace_period_seconds  = var.health_check_grace_period_seconds
  iam_role                           = var.iam_role
  launch_type                        = var.launch_type

  dynamic "load_balancer" {
    for_each = length(keys(var.load_balancer)) == 0 ? [] : [var.load_balancer]
    content {
      container_name   = load_balancer.value.container_name
      container_port   = load_balancer.value.container_port
      elb_name         = lookup(load_balancer.value, "elb_name", null)
      target_group_arn = lookup(load_balancer.value, "target_group_arn", null)
    }
  }
  
  dynamic "network_configuration" {
    for_each = length(keys(var.network_configuration)) == 0 ? [] : [var.network_configuration]
    content {
      assign_public_ip = lookup(network_configuration.value, "assign_public_ip", null)
      security_groups  = lookup(network_configuration.value, "security_groups", null)
      subnets          = network_configuration.value.subnets
    }
  }

  dynamic "ordered_placement_strategy" {
    for_each = length(keys(var.ordered_placement_strategy)) == 0 ? [] : [var.ordered_placement_strategy]
    content {
      field = lookup(ordered_placement_strategy.value, "field", null)
      type  = ordered_placement_strategy.value.type
    }
  }

  dynamic "placement_constraints" {
    for_each = length(keys(var.placement_constraints)) == 0 ? [] : [var.placement_constraints]
    content {
      expression = lookup(placement_constraints.value, "expression", null)
      type       = placement_constraints.value.type
    }
  }

  platform_version    = var.platform_version
  propagate_tags      = var.propagate_tags
  scheduling_strategy = var.scheduling_strategy

  dynamic "service_registries" {
    for_each = length(keys(var.service_registries)) == 0 ? [] : [var.service_registries]
    content {
      container_name = lookup(service_registries.value, "container_name", null)
      container_port = lookup(service_registries.value, "container_port", null)
      port           = lookup(service_registries.value, "port", null)
      registry_arn   = service_registries.value.registry_arn
    }
  }

  tags            = var.tags
  task_definition = var.task_definition
}