# Create a role

resource "aws_iam_role" "ec2_role" {
  name = "my_ec2_role"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
    {
        "Action": "sts:AssumeRole",
        "Effect": "Allow",
        "Principal": {
        "Service": "ec2.amazonaws.com"
        }
    }
    ]
}
EOF
}

# Attach role to policy - developer-policy in this case
## This policy is CRITICAL - without this no s3 access
resource "aws_iam_role_policy_attachment" "ec2_policy_role" {
  role       = "${aws_iam_role.ec2_role.name}"
  policy_arn = "arn:aws:iam::427491229895:policy/developer-policy"
}


# Attach role to policy
resource "aws_iam_policy_attachment" "ec2_policy_role" {
  name	= "ec2_attachment"
  roles	= [aws_iam_role.ec2_role.name]
  policy_arn = aws_iam_policy.ec2_policy.arn
}

# Create.Attach an instance profile - i think this is the big step
resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ec2_profile"
  role = aws_iam_role.ec2_role.name
}

