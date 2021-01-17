# TODO: Define the variable for aws_region
variable "aws_region" {
  type        = string
  description = "AWS region used for provisioning the AWS resources."
  default     = "ap-southeast-1"
}

variable "greeting" {
  type        = string
  description = "greeting variables for the greet_lambda function."
  default     = "Hello world"
}
