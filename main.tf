resource "aws_kms_key" "this" {
  description             = "This key is used to encrypt and decrypt objects."
  deletion_window_in_days = var.kms_deletion_window
  enable_key_rotation     = true
  multi_region            = var.kms_multi_region

  tags = {
    module = "aws_kms_key"
  }
}

resource "aws_kms_alias" "this" {
  name          = "alias/${var.kms_key_alias}"
  target_key_id = aws_kms_key.this.key_id
}
