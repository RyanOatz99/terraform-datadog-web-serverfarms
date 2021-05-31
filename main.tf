terraform {
  required_version = ">= 0.13"
  required_providers {
    datadog = {
      source  = "datadog/datadog"
      version = ">= 2.25.0"
    }
  }
}


resource "datadog_monitor" "web_serverfarms_cpu_percentage" {
  name  = "[web_serverfarms service][${var.asset_lbnref}] CPU rate over threshold"
  type  = "metric alert"
  count = var.activated_web_serverfarms_cpu_percentage == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_web_serverfarms_cpu_percentage,
    var.notify_web_serverfarms_cpu_percentage != "" ? var.notify_web_serverfarms_cpu_percentage : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_web_serverfarms_cpu_percentage != "" ? var.escalation_message_web_serverfarms_cpu_percentage : var.escalation_message,
  )

  query = "avg(${var.timeframe_web_serverfarms_cpu_percentage}):avg:azure.web_serverfarms.cpu_percentage{lbnref:${var.asset_lbnref}${var.scope_web_serverfarms_cpu_percentage}} > ${var.threshold_critical_web_serverfarms_cpu_percentage}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_web_serverfarms_cpu_percentage
    critical          = var.threshold_critical_web_serverfarms_cpu_percentage
  }

  evaluation_delay  = var.evaluation_delay
  new_host_delay    = var.new_host_delay
  include_tags      = var.include_tags
  no_data_timeframe = var.no_data_timeframe_web_serverfarms_cpu_percentage
  notify_no_data    = var.notify_no_data_web_serverfarms_cpu_percentage
  renotify_interval = 40
  notify_audit      = true
  timeout_h         = 0
  silenced          = {}

  tags = concat(
    [
      "monitor_resource_name:web_serverfarms_cpu_percentage",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_web_serverfarms_cpu_percentage != "" ? var.isprod_web_serverfarms_cpu_percentage : var.isprod,
      )}",
      "severity:${var.severity_web_serverfarms_cpu_percentage}",
      "category:${var.category_web_serverfarms_cpu_percentage}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.monitor_type != "" ? var.monitor_type : var.type_web_serverfarms_cpu_percentage}",
      "irp:${var.irp_web_serverfarms_cpu_percentage}",
    ],
    var.extra_tags_web_serverfarms_cpu_percentage,
  )
}

resource "datadog_monitor" "web_serverfarms_memory_percentage" {
  name  = "[web_serverfarms service][${var.asset_lbnref}] Memory rate usage over threshold"
  type  = "metric alert"
  count = var.activated_web_serverfarms_memory_percentage == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_web_serverfarms_memory_percentage,
    var.notify_web_serverfarms_memory_percentage != "" ? var.notify_web_serverfarms_memory_percentage : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_web_serverfarms_memory_percentage != "" ? var.escalation_message_web_serverfarms_memory_percentage : var.escalation_message,
  )

  query = "avg(${var.timeframe_web_serverfarms_memory_percentage}):avg:azure.web_serverfarms.memory_percentage{lbnref:${var.asset_lbnref}${var.scope_web_serverfarms_memory_percentage}} > ${var.threshold_critical_web_serverfarms_memory_percentage}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_web_serverfarms_memory_percentage
    critical          = var.threshold_critical_web_serverfarms_memory_percentage
  }

  evaluation_delay  = var.evaluation_delay
  new_host_delay    = var.new_host_delay
  include_tags      = var.include_tags
  no_data_timeframe = var.no_data_timeframe_web_serverfarms_memory_percentage
  notify_no_data    = var.notify_no_data_web_serverfarms_memory_percentage
  renotify_interval = 40
  notify_audit      = true
  timeout_h         = 0
  silenced          = {}

  tags = concat(
    [
      "monitor_resource_name:web_serverfarms_memory_percentage",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_web_serverfarms_memory_percentage != "" ? var.isprod_web_serverfarms_memory_percentage : var.isprod,
      )}",
      "severity:${var.severity_web_serverfarms_memory_percentage}",
      "category:${var.category_web_serverfarms_memory_percentage}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.monitor_type != "" ? var.monitor_type : var.type_web_serverfarms_memory_percentage}",
      "irp:${var.irp_web_serverfarms_memory_percentage}",
    ],
    var.extra_tags_web_serverfarms_memory_percentage,
  )
}

# Create a new Datadog web_serverfarms monitor
resource "datadog_monitor" "web_serverfarms_status" {
  name  = "[web_serverfarms service][${var.asset_lbnref}] Service status below threshold"
  type  = "query alert"
  count = var.activated_web_serverfarms_status == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_web_serverfarms_status,
    var.notify_web_serverfarms_status != "" ? var.notify_web_serverfarms_status : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_web_serverfarms_status != "" ? var.escalation_message_web_serverfarms_status : var.escalation_message,
  )

  query = "avg(${var.timeframe_web_serverfarms_status}):avg:azure.web_serverfarms.status{lbnref:${var.asset_lbnref}${var.scope_web_serverfarms_status}} <= ${var.threshold_critical_web_serverfarms_status}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_web_serverfarms_status
    critical          = var.threshold_critical_web_serverfarms_status
  }

  evaluation_delay  = var.evaluation_delay
  new_host_delay    = var.new_host_delay
  include_tags      = var.include_tags
  no_data_timeframe = var.no_data_timeframe_web_serverfarms_status
  notify_no_data    = var.notify_no_data_web_serverfarms_status
  renotify_interval = 40
  notify_audit      = true
  timeout_h         = 0
  silenced          = {}

  tags = concat(
    [
      "monitor_resource_name:web_serverfarms_status",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_web_serverfarms_status != "" ? var.isprod_web_serverfarms_status : var.isprod,
      )}",
      "severity:${var.severity_web_serverfarms_status}",
      "category:${var.category_web_serverfarms_status}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.monitor_type != "" ? var.monitor_type : var.type_web_serverfarms_status}",
      "irp:${var.irp_web_serverfarms_status}",
    ],
    var.extra_tags_web_serverfarms_status,
  )
}

