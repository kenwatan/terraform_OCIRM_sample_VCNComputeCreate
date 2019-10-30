resource "oci_core_virtual_network" "ExampleVCN" {
  cidr_block = "${var.vcn_cidr}"
  compartment_id = "${var.compartment_ocid}"
  display_name = "AMD_VCN"
  dns_label = "amdvcn"
}