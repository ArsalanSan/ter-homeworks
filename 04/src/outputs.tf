output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "map_zoneid" {
  description = "Mapping Zone to Subnet ID"
  value       = module.vpc.map_zone_id
}

