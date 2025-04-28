resource "google_storage_bucket_object" "gtfs-calitp-org" {
  for_each = local.files
  name     = each.value
  source   = "../src/${each.value}"
  bucket   = data.terraform_remote_state.gcs.outputs.google_storage_bucket_calitp-gtfs_name
}
