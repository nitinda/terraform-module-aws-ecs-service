output "id" {
  value = aws_ecs_service.ecs_service.id
}

output "name" {
  value = aws_ecs_service.ecs_service.name
}

output "cluster" {
  value = aws_ecs_service.ecs_service.cluster
}