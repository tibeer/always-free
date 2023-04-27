module "oracle" {
  source = "./modules/oracle_composed/free_arm_vm"
  count  = 1 # do not change, otherwise it will cost money!

  name      = "free-${count.index}"
  tenant_id = local.oci_tenant_ids[0]
  ports     = [22, 80]
  image     = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaa7xlh7c3l2xtrn53n5ezp2thnac3hgjo6biolfxisk3l4igfl3xba"
}
