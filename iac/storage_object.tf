resource "google_storage_bucket_object" "gtfs-calitp-org" {
  for_each     = module.template_files.files
  bucket       = data.terraform_remote_state.gcs.outputs.google_storage_bucket_calitp-gtfs_name
  name         = each.key
  content_type = each.value.content_type
  source       = each.value.source_path
  content      = each.value.content
}
