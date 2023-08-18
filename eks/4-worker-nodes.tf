resource "aws_eks_node_group" "example" {
  cluster_name    = aws_eks_cluster.this.name
  node_group_name = "example"
  node_role_arn   = aws_iam_role.nodes.arn
  subnet_ids = var.subnet_ids

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }
}
