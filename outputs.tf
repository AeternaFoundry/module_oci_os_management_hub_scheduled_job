output "os_management_hub_scheduled_jobs_id" {
  description = "Map of id values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no id are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "os_management_hub_scheduled_jobs_compartment_id" {
  description = "Map of compartment_id values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no compartment_id are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "os_management_hub_scheduled_jobs_defined_tags" {
  description = "Map of defined_tags values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no defined_tags are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "os_management_hub_scheduled_jobs_description" {
  description = "Map of description values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no description are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "os_management_hub_scheduled_jobs_display_name" {
  description = "Map of display_name values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no display_name are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "os_management_hub_scheduled_jobs_dynamic_set_ids" {
  description = "Map of dynamic_set_ids values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no dynamic_set_ids are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.dynamic_set_ids if v.dynamic_set_ids != null && length(v.dynamic_set_ids) > 0 }
}
output "os_management_hub_scheduled_jobs_freeform_tags" {
  description = "Map of freeform_tags values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "os_management_hub_scheduled_jobs_is_managed_by_autonomous_linux" {
  description = "Map of is_managed_by_autonomous_linux values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no is_managed_by_autonomous_linux are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.is_managed_by_autonomous_linux if v.is_managed_by_autonomous_linux != null }
}
output "os_management_hub_scheduled_jobs_is_restricted" {
  description = "Map of is_restricted values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no is_restricted are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.is_restricted if v.is_restricted != null }
}
output "os_management_hub_scheduled_jobs_is_subcompartment_included" {
  description = "Map of is_subcompartment_included values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no is_subcompartment_included are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.is_subcompartment_included if v.is_subcompartment_included != null }
}
output "os_management_hub_scheduled_jobs_lifecycle_stage_ids" {
  description = "Map of lifecycle_stage_ids values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no lifecycle_stage_ids are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.lifecycle_stage_ids if v.lifecycle_stage_ids != null && length(v.lifecycle_stage_ids) > 0 }
}
output "os_management_hub_scheduled_jobs_locations" {
  description = "Map of locations values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no locations are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.locations if v.locations != null && length(v.locations) > 0 }
}
output "os_management_hub_scheduled_jobs_managed_compartment_ids" {
  description = "Map of managed_compartment_ids values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no managed_compartment_ids are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.managed_compartment_ids if v.managed_compartment_ids != null && length(v.managed_compartment_ids) > 0 }
}
output "os_management_hub_scheduled_jobs_managed_instance_group_ids" {
  description = "Map of managed_instance_group_ids values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no managed_instance_group_ids are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.managed_instance_group_ids if v.managed_instance_group_ids != null && length(v.managed_instance_group_ids) > 0 }
}
output "os_management_hub_scheduled_jobs_managed_instance_ids" {
  description = "Map of managed_instance_ids values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no managed_instance_ids are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.managed_instance_ids if v.managed_instance_ids != null && length(v.managed_instance_ids) > 0 }
}
output "os_management_hub_scheduled_jobs_operations" {
  description = "Map of operations values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no operations are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.operations if v.operations != null && length(v.operations) > 0 }
}
output "os_management_hub_scheduled_jobs_recurring_rule" {
  description = "Map of recurring_rule values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no recurring_rule are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.recurring_rule if v.recurring_rule != null && length(v.recurring_rule) > 0 }
}
output "os_management_hub_scheduled_jobs_retry_intervals" {
  description = "Map of retry_intervals values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no retry_intervals are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.retry_intervals if v.retry_intervals != null && length(v.retry_intervals) > 0 }
}
output "os_management_hub_scheduled_jobs_schedule_type" {
  description = "Map of schedule_type values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no schedule_type are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.schedule_type if v.schedule_type != null && length(v.schedule_type) > 0 }
}
output "os_management_hub_scheduled_jobs_state" {
  description = "Map of state values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no state are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.state if v.state != null && length(v.state) > 0 }
}
output "os_management_hub_scheduled_jobs_system_tags" {
  description = "Map of system_tags values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no system_tags are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "os_management_hub_scheduled_jobs_time_created" {
  description = "Map of time_created values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no time_created are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "os_management_hub_scheduled_jobs_time_last_execution" {
  description = "Map of time_last_execution values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no time_last_execution are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.time_last_execution if v.time_last_execution != null && length(v.time_last_execution) > 0 }
}
output "os_management_hub_scheduled_jobs_time_next_execution" {
  description = "Map of time_next_execution values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no time_next_execution are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.time_next_execution if v.time_next_execution != null && length(v.time_next_execution) > 0 }
}
output "os_management_hub_scheduled_jobs_time_updated" {
  description = "Map of time_updated values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no time_updated are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "os_management_hub_scheduled_jobs_work_request_id" {
  description = "Map of work_request_id values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no work_request_id are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.work_request_id if v.work_request_id != null && length(v.work_request_id) > 0 }
}
output "os_management_hub_scheduled_jobs_work_request_ids" {
  description = "Map of work_request_ids values across all os_management_hub_scheduled_jobs, keyed the same as var.os_management_hub_scheduled_jobs except keys with no work_request_ids are omitted"
  value       = { for k, v in oci_os_management_hub_scheduled_job.os_management_hub_scheduled_jobs : k => v.work_request_ids if v.work_request_ids != null && length(v.work_request_ids) > 0 }
}

