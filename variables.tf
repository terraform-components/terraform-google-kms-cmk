variable "kms_key_ring_id" {
  type        = string
  description = "A key ring is for organizing your keys. In simple projects, you should not need more than one key ring usually. Key rings can not be destroyed, therefore you should be rather careful with this. See also: https://cloud.google.com/kms/docs/resource-hierarchy#key_rings"
}

variable "name" {
  type        = string
  description = "Name of your key"
}

variable "location" {
  type        = string
  description = "Location of the key. Be aware that the resources using the key and the key location need to match. Resources in `global` also need a `global` key and same for `europe` or `europe-west3` etc."
}

variable "service_identities" {
  type        = list(string)
  description = "Service identities for the key."
}

variable "labels" {
  type        = map(string)
  description = "Labels for the key."
}
