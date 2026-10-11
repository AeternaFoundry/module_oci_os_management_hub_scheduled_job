variable "os_management_hub_scheduled_jobs" {
  description = <<EOT
Map of os_management_hub_scheduled_jobs, attributes below
Required:
    - compartment_id
    - schedule_type
    - time_next_execution
    - operations (block):
        - install_snap_details (optional, block):
            - channel (optional)
            - is_signed (optional)
            - mode (optional)
            - name (required)
            - revision (optional)
        - manage_module_streams_details (optional, block):
            - disable (optional, block):
                - module_name (required)
                - software_source_id (optional)
                - stream_name (required)
            - enable (optional, block):
                - module_name (required)
                - software_source_id (optional)
                - stream_name (required)
            - install (optional, block):
                - module_name (required)
                - profile_name (required)
                - software_source_id (optional)
                - stream_name (required)
            - remove (optional, block):
                - module_name (required)
                - profile_name (required)
                - software_source_id (optional)
                - stream_name (required)
        - operation_type (required)
        - package_names (optional)
        - reboot_timeout_in_mins (optional)
        - remove_snap_details (optional, block):
            - name (required)
            - revision (optional)
        - software_source_ids (optional)
        - switch_module_streams_details (optional, block):
            - module_name (required)
            - software_source_id (optional)
            - stream_name (required)
        - switch_snap_channel_details (optional, block):
            - channel (optional)
            - name (required)
        - windows_update_names (optional)
Optional:
    - defined_tags
    - description
    - display_name
    - dynamic_set_ids
    - freeform_tags
    - is_managed_by_autonomous_linux
    - is_subcompartment_included
    - lifecycle_stage_ids
    - locations
    - managed_compartment_ids
    - managed_instance_group_ids
    - managed_instance_ids
    - recurring_rule
    - retry_intervals
    - work_request_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                 = string
    schedule_type                  = string
    time_next_execution            = string
    defined_tags                   = optional(map(string))
    description                    = optional(string)
    display_name                   = optional(string)
    dynamic_set_ids                = optional(list(string))
    freeform_tags                  = optional(map(string))
    is_managed_by_autonomous_linux = optional(bool)
    is_subcompartment_included     = optional(bool)
    lifecycle_stage_ids            = optional(list(string))
    locations                      = optional(list(string))
    managed_compartment_ids        = optional(list(string))
    managed_instance_group_ids     = optional(list(string))
    managed_instance_ids           = optional(list(string))
    recurring_rule                 = optional(string)
    retry_intervals                = optional(list(number))
    work_request_id                = optional(string)
    operations = list(object({
      install_snap_details = optional(object({
        channel   = optional(string)
        is_signed = optional(bool)
        mode      = optional(string)
        name      = string
        revision  = optional(string)
      }))
      manage_module_streams_details = optional(object({
        disable = optional(list(object({
          module_name        = string
          software_source_id = optional(string)
          stream_name        = string
        })))
        enable = optional(list(object({
          module_name        = string
          software_source_id = optional(string)
          stream_name        = string
        })))
        install = optional(list(object({
          module_name        = string
          profile_name       = string
          software_source_id = optional(string)
          stream_name        = string
        })))
        remove = optional(list(object({
          module_name        = string
          profile_name       = string
          software_source_id = optional(string)
          stream_name        = string
        })))
      }))
      operation_type         = string
      package_names          = optional(list(string))
      reboot_timeout_in_mins = optional(number)
      remove_snap_details = optional(object({
        name     = string
        revision = optional(string)
      }))
      software_source_ids = optional(list(string))
      switch_module_streams_details = optional(object({
        module_name        = string
        software_source_id = optional(string)
        stream_name        = string
      }))
      switch_snap_channel_details = optional(object({
        channel = optional(string)
        name    = string
      }))
      windows_update_names = optional(list(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.os_management_hub_scheduled_jobs : (
        length(v.operations) >= 1
      )
    ])
    error_message = "Each operations list must contain at least 1 items"
  }
}

