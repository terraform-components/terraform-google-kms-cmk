variable "kms_key_ring_id" {
  type        = string
  description = "A key ring is for organizing your keys. In simple projects, you should not need more than one key ring usually. Key rings can not be destroyed, therefore you should be rather careful with this."
}

variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "service_identities" {
  type = list(string)
}

variable "labels" {
  type = map(string)
}
