output "kms_key" {
  value = aws_kms_key.this
}

output "kms_key_alias" {
  value = aws_kms_alias.this
}
