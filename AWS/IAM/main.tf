resource "aws_iam_user" "user" {
  name = "rajkumar"


  tags = {
    Team    = "DevOPS"
    emailID = "blabla@blabla.com"
  }
}

resource "aws_iam_access_key" "user" {
  user = aws_iam_user.user.name
}

resource "aws_iam_user_policy" "Role" {
  name = "EC2_Describe"
  user = aws_iam_user.user.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
