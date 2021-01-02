# 変数宣言をしておかないと tfvars の値を活用できない
variable "region" {}

variable "ubuntu2004" {
  type = map(string)
}
variable "instance_type" {}
