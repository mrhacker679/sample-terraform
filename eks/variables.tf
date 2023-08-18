variable "env" {
  description = "Environment name."
  type        = string
  # default = "dev"
}

variable "eks_version" {
  description = "Desired Kubernetes master version."
  type        = string
  # default = "1.24"
}

variable "eks_name" {
  description = "Name of the cluster."
  type        = string
  # default = "myeks"
}

variable "subnet_ids" {
  description = "List of subnet IDs. Must be in at least two different availability zones."
  type        = list(string)
  # default = [provide atleast two subnet ids]
}
