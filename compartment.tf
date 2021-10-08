#data "oci_identity_regions" "test_regions" {
#
#}

#resource block for compartment
resource "oci_identity_compartment" "compartment" {
  provider       = oci.home
  compartment_id = var.compartment_ocid
  description    = "create a comparment within your oci compartment"
  name           = "compartment_created_using_terraform"
  #region  = "${var.home_region}"
}

resource "time_sleep" "wait_60_seconds" {
  depends_on = [oci_identity_compartment.compartment]

  create_duration = "60s"
}

