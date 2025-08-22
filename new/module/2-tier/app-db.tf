# --- Create RDS DB instance ---
resource "aws_db_instance" "alpha-db" {
    identifier = var.db_name
    engine = var.engine
    instance_class = var.instance_class
    
    # kms key initialized
    kms_key_id = aws_kms_key.alpha-kms.arn
    # storage configuration
    allocated_storage = var.allocated_storage
    storage_type = var.storage_type
    storage_encrypted = var.storage_encrypted

    # connect to vpc
    vpc_security_group_ids = [aws_security_group.db-sg.id]
    manage_master_user_password = true
    username = var.engine
    # attach to subnets
    db_subnet_group_name = aws_db_subnet_group.default.name
    # skip final snapshot when destroying
    skip_final_snapshot = var.skip_final_snapshot
}

# --- Create RDS DB KMS key ---
resource "aws_kms_key" "alpha-kms" {
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
