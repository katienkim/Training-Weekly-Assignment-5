resource "aws_db_instance" "alpha-db" {
    identifier = var.db_name
    engine = var.engine
    instance_class = var.instance_class
    # kms
    kms_key_id = aws_kms_key.alpha-kms.arn
    # storage
    allocated_storage = var.allocated_storage
    storage_type = var.storage_type
    storage_encrypted = var.storage_encrypted

    # connect to vpc
    vpc_security_group_ids = [aws_security_group.db-sg.id]

    username = var.engine
    db_subnet_group_name = aws_db_subnet_group.default.name
    skip_final_snapshot = var.skip_final_snapshot
}

resource "aws_kms_key" "alpha-kms" {
    policy = var.policy
}
