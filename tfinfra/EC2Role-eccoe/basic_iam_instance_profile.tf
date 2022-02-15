
resource "aws_iam_instance_profile" "test_profile" {
  name = "test_profile"
  role = "arn:aws:iam::865412431365:role/adfs-eccoe-developer"
}

resource "aws_iam_role" "role" {
  name = "test_role"
  path = "/"
  policy_arn = "arn:aws:iam::865412431365:policy/developer-policy"

}
