# Global variables

variable "monitor_type" {
  type        = string
  description = "Type for all monitors among incident, information"
  default     = ""
}

variable "template" {
  description = "Template name"
  default     = "azure-web_serverfarms"
}

variable "asset_lbnref" {
  description = "Asset lbnref"
}

variable "asset_name" {
  description = "Asset name"
}

variable "default_tags" {
  description = "map of default tags to set on ressources"
  type        = map(string)
  default     = {}
}

variable "custom_tags" {
  description = "map of custom tags to set on ressources"
  type        = map(string)
  default     = {}
}

variable "isprod" {
  description = "activate the monitor on production on Sentinel"
  default     = "false"
}

variable "notify_to" {
  description = "Define notification hooks"
  default     = "@webhook-SGCProd @monitoring-teams"
}

variable "notify_capacity" {
  description = "to who notify capacity alerts"
  default     = ""
}

variable "category" {
  description = "Category of the monitors"
  default     = "228"
}

variable "customer_name" {
  description = "Client name as in Idefix"
}

variable "customer_id" {
  description = "ID of the client in Idefix"
}

variable "team_in_charge" {
  description = "Define the team in charge"
  default     = "Undefined"
}

variable "evaluation_delay" {
  description = "Delay in seconds for the metric evaluation"
  default     = 15
}

variable "new_host_delay" {
  description = "Delay in seconds before monitor new resource"
  default     = 300
}

variable "escalation_message" {
  description = "Default escalation message"
  default     = ""
}

variable "renotify_interval" {
  description = "Delay in minutes before monitor is renotified"
  default     = 40
}

variable "include_tags" {
  description = "Include triggered event tags in title"
  default     = false
}

# Datadog monitors variables

## web_serverfarms_status

variable "activated_web_serverfarms_status" {
  description = "If the monitor [web_serverfarms_status] is activated"
  type        = string
  default     = "true"
}

variable "message_web_serverfarms_status" {
  description = "Custom message for monitor [web_serverfarms_status]"
  type        = string

  default = <<EOM
    Verify if the service status is below the defined threshold during last check period.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_web_serverfarms_status" {
  description = "Escalation message for monitor [web_serverfarms_status]"
  type        = string
  default     = ""
}

variable "notify_web_serverfarms_status" {
  description = "Define notification hooks for monitor [notify_web_serverfarms_status]"
  default     = ""
}

variable "isprod_web_serverfarms_status" {
  description = "Define whether the monitor [web_serverfarms_status] is in production or not"
  default     = ""
}

variable "irp_web_serverfarms_status" {
  description = "Define the IRP for monitor [web_serverfarms_status]"
  default     = "http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"
}

variable "severity_web_serverfarms_status" {
  description = "Define severity for monitor [web_serverfarms_status]"
  default     = "1"
}

variable "category_web_serverfarms_status" {
  description = "Define category for monitor [web_serverfarms_status]"
  default     = "228"
}

variable "timeframe_web_serverfarms_status" {
  description = "Monitor timeframe for monitor [web_serverfarms_status] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_1h"
}

variable "type_web_serverfarms_status" {
  description = "Type for monitor [web_serverfarms_status] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_web_serverfarms_status" {
  description = "Extra tags for monitor [web_serverfarms_status]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_web_serverfarms_status" {
  description = "No data timeframe in minutes for monitor [web_serverfarms_status]"
  default     = 1440
}

variable "notify_no_data_web_serverfarms_status" {
  description = "Will raise no data alert if set to true"
  default     = true
}

variable "threshold_critical_web_serverfarms_status" {
  description = "Monitor [web_serverfarms_status] critical threshold"
  default     = "0.8"
}

variable "threshold_critical_recovery_web_serverfarms_status" {
  description = "Monitor [web_serverfarms_status] critical recovery threshold"
  default     = "0.9"
}

variable "tolerance_rate_web_serverfarms_status" {
  description = "Give leverage for a mitigation value to limit in case of low connection"
  default     = "1"
}

variable "scope_web_serverfarms_status" {
  description = "Allow more flexibility to filter the target of the monitor"
  default     = ""
}

## web_serverfarms_cpu_percentage

variable "activated_web_serverfarms_cpu_percentage" {
  description = "If the monitor [web_serverfarms_cpu_percentage] is activated"
  type        = string
  default     = "true"
}

variable "message_web_serverfarms_cpu_percentage" {
  description = "Custom message for monitor [web_serverfarms_cpu_percentage]"
  type        = string

  default = <<EOM
    Verify if the rate of failed requests on the eventhub is over the defined threshold during last check period.
    Unit: Percent.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_web_serverfarms_cpu_percentage" {
  description = "Escalation message for monitor [web_serverfarms_cpu_percentage]"
  type        = string
  default     = ""
}

variable "notify_web_serverfarms_cpu_percentage" {
  description = "Define notification hooks for monitor [notify_web_serverfarms_cpu_percentage]"
  default     = ""
}

variable "isprod_web_serverfarms_cpu_percentage" {
  description = "Define whether the monitor [web_serverfarms_cpu_percentage] is in production or not"
  default     = ""
}

variable "irp_web_serverfarms_cpu_percentage" {
  description = "Define the IRP for monitor [web_serverfarms_cpu_percentage]"
  default     = "http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"
}

variable "severity_web_serverfarms_cpu_percentage" {
  description = "Define severity for monitor [web_serverfarms_cpu_percentage]"
  default     = "1"
}

variable "category_web_serverfarms_cpu_percentage" {
  description = "Define category for monitor [web_serverfarms_cpu_percentage]"
  default     = "228"
}

variable "timeframe_web_serverfarms_cpu_percentage" {
  description = "Monitor timeframe for monitor [web_serverfarms_cpu_percentage] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_1h"
}

variable "type_web_serverfarms_cpu_percentage" {
  description = "Type for monitor [web_serverfarms_cpu_percentage] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_web_serverfarms_cpu_percentage" {
  description = "Extra tags for monitor [web_serverfarms_cpu_percentage]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_web_serverfarms_cpu_percentage" {
  description = "No data timeframe in minutes for monitor [web_serverfarms_cpu_percentage]"
  default     = 1440
}

variable "notify_no_data_web_serverfarms_cpu_percentage" {
  description = "Will raise no data alert if set to true"
  default     = false
}

variable "threshold_critical_web_serverfarms_cpu_percentage" {
  description = "Monitor [web_serverfarms_cpu_percentage] critical threshold"
  default     = "95"
}

variable "threshold_critical_recovery_web_serverfarms_cpu_percentage" {
  description = "Monitor [web_serverfarms_cpu_percentage] critical recovery threshold"
  default     = "75"
}

variable "tolerance_rate_web_serverfarms_cpu_percentage" {
  description = "Give leverage for a mitigation value to limit in case of low connection"
  default     = "1"
}

variable "scope_web_serverfarms_cpu_percentage" {
  description = "Allow more flexibility to filter the target of the monitor"
  default     = ""
}

## web_serverfarms_memory_percentage

variable "activated_web_serverfarms_memory_percentage" {
  description = "If the monitor [web_serverfarms_memory_percentage] is activated"
  type        = string
  default     = "true"
}

variable "message_web_serverfarms_memory_percentage" {
  description = "Custom message for monitor [web_serverfarms_memory_percentage]"
  type        = string

  default = <<EOM
    Verify if the rate of failed requests on the eventhub is over the defined threshold during last check period.
    Unit: Percent.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_web_serverfarms_memory_percentage" {
  description = "Escalation message for monitor [web_serverfarms_memory_percentage]"
  type        = string
  default     = ""
}

variable "notify_web_serverfarms_memory_percentage" {
  description = "Define notification hooks for monitor [notify_web_serverfarms_memory_percentage]"
  default     = ""
}

variable "isprod_web_serverfarms_memory_percentage" {
  description = "Define whether the monitor [web_serverfarms_memory_percentage] is in production or not"
  default     = ""
}

variable "irp_web_serverfarms_memory_percentage" {
  description = "Define the IRP for monitor [web_serverfarms_memory_percentage]"
  default     = "http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"
}

variable "severity_web_serverfarms_memory_percentage" {
  description = "Define severity for monitor [web_serverfarms_memory_percentage]"
  default     = "1"
}

variable "category_web_serverfarms_memory_percentage" {
  description = "Define category for monitor [web_serverfarms_memory_percentage]"
  default     = "228"
}

variable "timeframe_web_serverfarms_memory_percentage" {
  description = "Monitor timeframe for monitor [web_serverfarms_memory_percentage] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_1h"
}

variable "type_web_serverfarms_memory_percentage" {
  description = "Type for monitor [web_serverfarms_memory_percentage] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_web_serverfarms_memory_percentage" {
  description = "Extra tags for monitor [web_serverfarms_memory_percentage]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_web_serverfarms_memory_percentage" {
  description = "No data timeframe in minutes for monitor [web_serverfarms_memory_percentage]"
  default     = 1440
}

variable "notify_no_data_web_serverfarms_memory_percentage" {
  description = "Will raise no data alert if set to true"
  default     = false
}

variable "threshold_critical_web_serverfarms_memory_percentage" {
  description = "Monitor [web_serverfarms_memory_percentage] critical threshold"
  default     = "95"
}

variable "threshold_critical_recovery_web_serverfarms_memory_percentage" {
  description = "Monitor [web_serverfarms_memory_percentage] critical recovery threshold"
  default     = "90"
}

variable "tolerance_rate_web_serverfarms_memory_percentage" {
  description = "Give leverage for a mitigation value to limit in case of low connection"
  default     = "1"
}

variable "scope_web_serverfarms_memory_percentage" {
  description = "Allow more flexibility to filter the target of the monitor"
  default     = ""
}

##
