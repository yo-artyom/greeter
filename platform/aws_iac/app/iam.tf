# resource "aws_iam_role" "eks_cluster_role" {
  # assume_role_policy = jsonencode({
    # Version = "2012-10-17",
    # Statement = [{
      # Action    = "sts:AssumeRole",
      # Effect    = "Allow",
      # Principal = { Service = "eks.amazonaws.com" }
    # }]
  # })
# }

# resource "aws_iam_role_policy_attachment" "eks_cluster_policy" {
  # role       = aws_iam_role.eks_cluster_role.name
  # policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
# }

# resource "aws_iam_role" "eks_node_group_role" {
  # assume_role_policy = jsonencode({
    # Version = "2012-10-17",
    # Statement = [{
      # Action    = "sts:AssumeRole",
      # Effect    = "Allow",
      # Principal = { Service = "ec2.amazonaws.com" }
    # }]
  # })
# }

# resource "aws_iam_role_policy_attachment" "eks_worker_node_policy" {
  # role       = aws_iam_role.eks_node_group_role.name
  # policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
# }
