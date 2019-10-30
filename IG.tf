resource "oci_core_internet_gateway" "ExampleIG" {
  compartment_id = "${var.compartment_ocid}"
  display_name = "AMD_VCN_IG"
  vcn_id = "${oci_core_virtual_network.ExampleVCN.id}"
}