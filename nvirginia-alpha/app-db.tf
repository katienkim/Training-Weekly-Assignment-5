resource "aws_db_instance" "alpha-db" {
    identifier = "alpha-us-east-1-postgres-rds"
    engine = "postgres"
    instance_class = "db.t4g.micro"
    # kms
    kms_key_id = aws_kms_key.alpha-kms.arn
    # storage
    allocated_storage = 20
    storage_type = "gp3"
    storage_encrypted = true

    # connect to vpc
    vpc_security_group_ids = [aws_security_group.db-sg.id]

    username = "postgres"
    manage_master_user_password = true
    db_subnet_group_name = aws_db_subnet_group.default.name
    final_snapshot_identifier = "alpha-us-east-1-db-backup"
    skip_final_snapshot = true
}

resource "aws_kms_key" "alpha-kms" {
    enable_key_rotation = true
    policy = jsonencode({
        "Id": "key-consolepolicy-3",
        "Version": "2012-10-17",
        "Statement": [
            {
            "Sid": "Enable IAM User Permissions",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::637423504015:root"
            },
            "Action": "kms:*",
            "Resource": "*"
            }
        ]
    })
}
