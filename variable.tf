variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "region" {}

data "oci_identity_availability_domains" "ADs" {
  compartment_id = "${var.tenancy_ocid}"
}
variable "availability_domain" {
    default = "1"
}

variable "vcn_cidr" {
    default = "10.1.0.0/23"
}

variable "subnet_cidr" {
    default = "10.1.0.0/24"
}

variable "ssh_public_key" {}

variable "InstanceImageOCID" {
    type = "map"
    default = {
        // See https://docs.us-phoenix-1.oraclecloud.com/images/
        // Oracle-provided image "Oracle-Linux-7.7-2019.09.25-0"
        ap-tokyo-1 = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaatbwoj3ee5sbaa6u5ptpy74bukkqmj75bptvn7dpezovpdvr6ds2q"
        ap-seoul-1 = "ocid1.image.oc1.ap-seoul-1.aaaaaaaaxabo4p5asejscj4ba4weg62owtivojokmtcjyr6eqrdeq4dgfzvq"
        us-ashburn-1 = "ocid1.image.oc1.iad.aaaaaaaa3onyerinivkpiqektrd3idoeo72fuz56cpz6rihkvqulmoux5qkq"
        eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaajqghpxnszpnghz3um66jywaw5q3pudfw5qwwkyu24ef7lcsyjhsq"
        uk-london-1 = "ocid1.image.oc1.uk-london-1.aaaaaaaaf4nj5yoqo7gv6ht6t7gtcr5de5slhy52alv3nqyjvmmh25knbama"
    }
}

variable "InstanceShape" {
    default = "VM.Standard2.1"
}

variable "InstanceName" {
    default = "amd01"
}