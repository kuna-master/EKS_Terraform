output "aws_eks_cluster-demo-endpoint" {
  value = "${aws_eks_cluster.demo.endpoint}"
}

output "aws_eks_cluster_demo_certificate_authority_0_data" {
    value = "${aws_eks_cluster.demo.certificate_authority.0.data}"
}

output "aws_iam_role_demo_node_arn" {
    value = "${aws_iam_role.demo-node.arn}"
}