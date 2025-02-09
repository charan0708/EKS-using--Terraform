output "clusterid" {
    value = module.eks.cluster_id
    description = "EKS cluster id"
}

output "cluster_endpoint" {
    value = module.eks.cluster_endpoint
    description = "cluster endpoint"
  
}

