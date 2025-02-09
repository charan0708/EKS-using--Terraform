module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.33.1"
  cluster_name = "demo-eks-cluster"
  cluster_version = var.kubernetes_version
  subnet_ids = module.vpc.private_subnets

  vpc_id = module.vpc.vpc_id

  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"
    instance_type = "t3.medium"
    vpc_security_group_ids = [aws_security_group.sg.id]
  }

  eks_managed_node_groups = {
    node_group = {
        min_size = 2
        max_size = 6
        desired_size = 2
    }
  }

}