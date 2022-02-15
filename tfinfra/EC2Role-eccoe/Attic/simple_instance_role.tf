# creates iam instance profile for ec2 instance
resource "aws_iam_instance_profile" "ec2ssm_profile" {
  name = "butzer_ec2_profile"
  role = aws_iam_role.ec2_policy.name
}
