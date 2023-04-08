output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "subnets_vpc" {
  description = "Mapping Subnet Name to Subnet ID"
  value       = module.vpc.subnets_locations
}
