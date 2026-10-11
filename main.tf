resource "oci_os_management_hub_scheduled_job" "os_management_hub_scheduled_jobs" {
  for_each = var.os_management_hub_scheduled_jobs

  compartment_id                 = each.value.compartment_id
  schedule_type                  = each.value.schedule_type
  time_next_execution            = each.value.time_next_execution
  defined_tags                   = each.value.defined_tags
  description                    = each.value.description
  display_name                   = each.value.display_name
  dynamic_set_ids                = each.value.dynamic_set_ids
  freeform_tags                  = each.value.freeform_tags
  is_managed_by_autonomous_linux = each.value.is_managed_by_autonomous_linux
  is_subcompartment_included     = each.value.is_subcompartment_included
  lifecycle_stage_ids            = each.value.lifecycle_stage_ids
  locations                      = each.value.locations
  managed_compartment_ids        = each.value.managed_compartment_ids
  managed_instance_group_ids     = each.value.managed_instance_group_ids
  managed_instance_ids           = each.value.managed_instance_ids
  recurring_rule                 = each.value.recurring_rule
  retry_intervals                = each.value.retry_intervals
  work_request_id                = each.value.work_request_id

  dynamic "operations" {
    for_each = each.value.operations
    content {
      dynamic "install_snap_details" {
        for_each = operations.value.install_snap_details != null ? [operations.value.install_snap_details] : []
        content {
          channel   = install_snap_details.value.channel
          is_signed = install_snap_details.value.is_signed
          mode      = install_snap_details.value.mode
          name      = install_snap_details.value.name
          revision  = install_snap_details.value.revision
        }
      }
      dynamic "manage_module_streams_details" {
        for_each = operations.value.manage_module_streams_details != null ? [operations.value.manage_module_streams_details] : []
        content {
          dynamic "disable" {
            for_each = manage_module_streams_details.value.disable != null ? manage_module_streams_details.value.disable : []
            content {
              module_name        = disable.value.module_name
              software_source_id = disable.value.software_source_id
              stream_name        = disable.value.stream_name
            }
          }
          dynamic "enable" {
            for_each = manage_module_streams_details.value.enable != null ? manage_module_streams_details.value.enable : []
            content {
              module_name        = enable.value.module_name
              software_source_id = enable.value.software_source_id
              stream_name        = enable.value.stream_name
            }
          }
          dynamic "install" {
            for_each = manage_module_streams_details.value.install != null ? manage_module_streams_details.value.install : []
            content {
              module_name        = install.value.module_name
              profile_name       = install.value.profile_name
              software_source_id = install.value.software_source_id
              stream_name        = install.value.stream_name
            }
          }
          dynamic "remove" {
            for_each = manage_module_streams_details.value.remove != null ? manage_module_streams_details.value.remove : []
            content {
              module_name        = remove.value.module_name
              profile_name       = remove.value.profile_name
              software_source_id = remove.value.software_source_id
              stream_name        = remove.value.stream_name
            }
          }
        }
      }
      operation_type         = operations.value.operation_type
      package_names          = operations.value.package_names
      reboot_timeout_in_mins = operations.value.reboot_timeout_in_mins
      dynamic "remove_snap_details" {
        for_each = operations.value.remove_snap_details != null ? [operations.value.remove_snap_details] : []
        content {
          name     = remove_snap_details.value.name
          revision = remove_snap_details.value.revision
        }
      }
      software_source_ids = operations.value.software_source_ids
      dynamic "switch_module_streams_details" {
        for_each = operations.value.switch_module_streams_details != null ? [operations.value.switch_module_streams_details] : []
        content {
          module_name        = switch_module_streams_details.value.module_name
          software_source_id = switch_module_streams_details.value.software_source_id
          stream_name        = switch_module_streams_details.value.stream_name
        }
      }
      dynamic "switch_snap_channel_details" {
        for_each = operations.value.switch_snap_channel_details != null ? [operations.value.switch_snap_channel_details] : []
        content {
          channel = switch_snap_channel_details.value.channel
          name    = switch_snap_channel_details.value.name
        }
      }
      windows_update_names = operations.value.windows_update_names
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

