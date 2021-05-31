## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_datadog"></a> [datadog](#provider\_datadog) | >= 2.25.0 |

## Usage

```hcl
module "datadog_web_serverfarms" {
  source        = "linkbynet/web-serverfarms/datadog"
  customer_name = "mycustomer"
  customer_id   = 1234
  asset_lbnref  = 1234
  asset_name    = mywebserverfarms
}
```

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [datadog_monitor.web_serverfarms_cpu_percentage](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/monitor) | resource |
| [datadog_monitor.web_serverfarms_memory_percentage](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/monitor) | resource |
| [datadog_monitor.web_serverfarms_status](https://registry.terraform.io/providers/datadog/datadog/latest/docs/resources/monitor) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_activated_web_serverfarms_cpu_percentage"></a> [activated\_web\_serverfarms\_cpu\_percentage](#input\_activated\_web\_serverfarms\_cpu\_percentage) | If the monitor [web\_serverfarms\_cpu\_percentage] is activated | `string` | `"true"` | no |
| <a name="input_activated_web_serverfarms_memory_percentage"></a> [activated\_web\_serverfarms\_memory\_percentage](#input\_activated\_web\_serverfarms\_memory\_percentage) | If the monitor [web\_serverfarms\_memory\_percentage] is activated | `string` | `"true"` | no |
| <a name="input_activated_web_serverfarms_status"></a> [activated\_web\_serverfarms\_status](#input\_activated\_web\_serverfarms\_status) | If the monitor [web\_serverfarms\_status] is activated | `string` | `"true"` | no |
| <a name="input_asset_lbnref"></a> [asset\_lbnref](#input\_asset\_lbnref) | Asset lbnref | `any` | n/a | yes |
| <a name="input_asset_name"></a> [asset\_name](#input\_asset\_name) | Asset name | `any` | n/a | yes |
| <a name="input_category"></a> [category](#input\_category) | Category of the monitors | `string` | `"228"` | no |
| <a name="input_category_web_serverfarms_cpu_percentage"></a> [category\_web\_serverfarms\_cpu\_percentage](#input\_category\_web\_serverfarms\_cpu\_percentage) | Define category for monitor [web\_serverfarms\_cpu\_percentage] | `string` | `"228"` | no |
| <a name="input_category_web_serverfarms_memory_percentage"></a> [category\_web\_serverfarms\_memory\_percentage](#input\_category\_web\_serverfarms\_memory\_percentage) | Define category for monitor [web\_serverfarms\_memory\_percentage] | `string` | `"228"` | no |
| <a name="input_category_web_serverfarms_status"></a> [category\_web\_serverfarms\_status](#input\_category\_web\_serverfarms\_status) | Define category for monitor [web\_serverfarms\_status] | `string` | `"228"` | no |
| <a name="input_custom_tags"></a> [custom\_tags](#input\_custom\_tags) | map of custom tags to set on ressources | `map(string)` | `{}` | no |
| <a name="input_customer_id"></a> [customer\_id](#input\_customer\_id) | ID of the client in Idefix | `any` | n/a | yes |
| <a name="input_customer_name"></a> [customer\_name](#input\_customer\_name) | Client name as in Idefix | `any` | n/a | yes |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | map of default tags to set on ressources | `map(string)` | `{}` | no |
| <a name="input_escalation_message"></a> [escalation\_message](#input\_escalation\_message) | Default escalation message | `string` | `""` | no |
| <a name="input_escalation_message_web_serverfarms_cpu_percentage"></a> [escalation\_message\_web\_serverfarms\_cpu\_percentage](#input\_escalation\_message\_web\_serverfarms\_cpu\_percentage) | Escalation message for monitor [web\_serverfarms\_cpu\_percentage] | `string` | `""` | no |
| <a name="input_escalation_message_web_serverfarms_memory_percentage"></a> [escalation\_message\_web\_serverfarms\_memory\_percentage](#input\_escalation\_message\_web\_serverfarms\_memory\_percentage) | Escalation message for monitor [web\_serverfarms\_memory\_percentage] | `string` | `""` | no |
| <a name="input_escalation_message_web_serverfarms_status"></a> [escalation\_message\_web\_serverfarms\_status](#input\_escalation\_message\_web\_serverfarms\_status) | Escalation message for monitor [web\_serverfarms\_status] | `string` | `""` | no |
| <a name="input_evaluation_delay"></a> [evaluation\_delay](#input\_evaluation\_delay) | Delay in seconds for the metric evaluation | `number` | `15` | no |
| <a name="input_extra_tags_web_serverfarms_cpu_percentage"></a> [extra\_tags\_web\_serverfarms\_cpu\_percentage](#input\_extra\_tags\_web\_serverfarms\_cpu\_percentage) | Extra tags for monitor [web\_serverfarms\_cpu\_percentage] | `list(string)` | `[]` | no |
| <a name="input_extra_tags_web_serverfarms_memory_percentage"></a> [extra\_tags\_web\_serverfarms\_memory\_percentage](#input\_extra\_tags\_web\_serverfarms\_memory\_percentage) | Extra tags for monitor [web\_serverfarms\_memory\_percentage] | `list(string)` | `[]` | no |
| <a name="input_extra_tags_web_serverfarms_status"></a> [extra\_tags\_web\_serverfarms\_status](#input\_extra\_tags\_web\_serverfarms\_status) | Extra tags for monitor [web\_serverfarms\_status] | `list(string)` | `[]` | no |
| <a name="input_include_tags"></a> [include\_tags](#input\_include\_tags) | Include triggered event tags in title | `bool` | `false` | no |
| <a name="input_irp_web_serverfarms_cpu_percentage"></a> [irp\_web\_serverfarms\_cpu\_percentage](#input\_irp\_web\_serverfarms\_cpu\_percentage) | Define the IRP for monitor [web\_serverfarms\_cpu\_percentage] | `string` | `"http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"` | no |
| <a name="input_irp_web_serverfarms_memory_percentage"></a> [irp\_web\_serverfarms\_memory\_percentage](#input\_irp\_web\_serverfarms\_memory\_percentage) | Define the IRP for monitor [web\_serverfarms\_memory\_percentage] | `string` | `"http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"` | no |
| <a name="input_irp_web_serverfarms_status"></a> [irp\_web\_serverfarms\_status](#input\_irp\_web\_serverfarms\_status) | Define the IRP for monitor [web\_serverfarms\_status] | `string` | `"http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"` | no |
| <a name="input_isprod"></a> [isprod](#input\_isprod) | activate the monitor on production on Sentinel | `string` | `"false"` | no |
| <a name="input_isprod_web_serverfarms_cpu_percentage"></a> [isprod\_web\_serverfarms\_cpu\_percentage](#input\_isprod\_web\_serverfarms\_cpu\_percentage) | Define whether the monitor [web\_serverfarms\_cpu\_percentage] is in production or not | `string` | `""` | no |
| <a name="input_isprod_web_serverfarms_memory_percentage"></a> [isprod\_web\_serverfarms\_memory\_percentage](#input\_isprod\_web\_serverfarms\_memory\_percentage) | Define whether the monitor [web\_serverfarms\_memory\_percentage] is in production or not | `string` | `""` | no |
| <a name="input_isprod_web_serverfarms_status"></a> [isprod\_web\_serverfarms\_status](#input\_isprod\_web\_serverfarms\_status) | Define whether the monitor [web\_serverfarms\_status] is in production or not | `string` | `""` | no |
| <a name="input_message_web_serverfarms_cpu_percentage"></a> [message\_web\_serverfarms\_cpu\_percentage](#input\_message\_web\_serverfarms\_cpu\_percentage) | Custom message for monitor [web\_serverfarms\_cpu\_percentage] | `string` | `"    Verify if the rate of failed requests on the eventhub is over the defined threshold during last check period.\n    Unit: Percent.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_message_web_serverfarms_memory_percentage"></a> [message\_web\_serverfarms\_memory\_percentage](#input\_message\_web\_serverfarms\_memory\_percentage) | Custom message for monitor [web\_serverfarms\_memory\_percentage] | `string` | `"    Verify if the rate of failed requests on the eventhub is over the defined threshold during last check period.\n    Unit: Percent.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_message_web_serverfarms_status"></a> [message\_web\_serverfarms\_status](#input\_message\_web\_serverfarms\_status) | Custom message for monitor [web\_serverfarms\_status] | `string` | `"    Verify if the service status is below the defined threshold during last check period.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_monitor_type"></a> [monitor\_type](#input\_monitor\_type) | Type for all monitors among incident, information | `string` | `""` | no |
| <a name="input_new_host_delay"></a> [new\_host\_delay](#input\_new\_host\_delay) | Delay in seconds before monitor new resource | `number` | `300` | no |
| <a name="input_no_data_timeframe_web_serverfarms_cpu_percentage"></a> [no\_data\_timeframe\_web\_serverfarms\_cpu\_percentage](#input\_no\_data\_timeframe\_web\_serverfarms\_cpu\_percentage) | No data timeframe in minutes for monitor [web\_serverfarms\_cpu\_percentage] | `number` | `1440` | no |
| <a name="input_no_data_timeframe_web_serverfarms_memory_percentage"></a> [no\_data\_timeframe\_web\_serverfarms\_memory\_percentage](#input\_no\_data\_timeframe\_web\_serverfarms\_memory\_percentage) | No data timeframe in minutes for monitor [web\_serverfarms\_memory\_percentage] | `number` | `1440` | no |
| <a name="input_no_data_timeframe_web_serverfarms_status"></a> [no\_data\_timeframe\_web\_serverfarms\_status](#input\_no\_data\_timeframe\_web\_serverfarms\_status) | No data timeframe in minutes for monitor [web\_serverfarms\_status] | `number` | `1440` | no |
| <a name="input_notify_capacity"></a> [notify\_capacity](#input\_notify\_capacity) | to who notify capacity alerts | `string` | `""` | no |
| <a name="input_notify_no_data_web_serverfarms_cpu_percentage"></a> [notify\_no\_data\_web\_serverfarms\_cpu\_percentage](#input\_notify\_no\_data\_web\_serverfarms\_cpu\_percentage) | Will raise no data alert if set to true | `bool` | `false` | no |
| <a name="input_notify_no_data_web_serverfarms_memory_percentage"></a> [notify\_no\_data\_web\_serverfarms\_memory\_percentage](#input\_notify\_no\_data\_web\_serverfarms\_memory\_percentage) | Will raise no data alert if set to true | `bool` | `false` | no |
| <a name="input_notify_no_data_web_serverfarms_status"></a> [notify\_no\_data\_web\_serverfarms\_status](#input\_notify\_no\_data\_web\_serverfarms\_status) | Will raise no data alert if set to true | `bool` | `true` | no |
| <a name="input_notify_to"></a> [notify\_to](#input\_notify\_to) | Define notification hooks | `string` | `"@webhook-SGCProd @monitoring-teams"` | no |
| <a name="input_notify_web_serverfarms_cpu_percentage"></a> [notify\_web\_serverfarms\_cpu\_percentage](#input\_notify\_web\_serverfarms\_cpu\_percentage) | Define notification hooks for monitor [notify\_web\_serverfarms\_cpu\_percentage] | `string` | `""` | no |
| <a name="input_notify_web_serverfarms_memory_percentage"></a> [notify\_web\_serverfarms\_memory\_percentage](#input\_notify\_web\_serverfarms\_memory\_percentage) | Define notification hooks for monitor [notify\_web\_serverfarms\_memory\_percentage] | `string` | `""` | no |
| <a name="input_notify_web_serverfarms_status"></a> [notify\_web\_serverfarms\_status](#input\_notify\_web\_serverfarms\_status) | Define notification hooks for monitor [notify\_web\_serverfarms\_status] | `string` | `""` | no |
| <a name="input_renotify_interval"></a> [renotify\_interval](#input\_renotify\_interval) | Delay in minutes before monitor is renotified | `number` | `40` | no |
| <a name="input_scope_web_serverfarms_cpu_percentage"></a> [scope\_web\_serverfarms\_cpu\_percentage](#input\_scope\_web\_serverfarms\_cpu\_percentage) | Allow more flexibility to filter the target of the monitor | `string` | `""` | no |
| <a name="input_scope_web_serverfarms_memory_percentage"></a> [scope\_web\_serverfarms\_memory\_percentage](#input\_scope\_web\_serverfarms\_memory\_percentage) | Allow more flexibility to filter the target of the monitor | `string` | `""` | no |
| <a name="input_scope_web_serverfarms_status"></a> [scope\_web\_serverfarms\_status](#input\_scope\_web\_serverfarms\_status) | Allow more flexibility to filter the target of the monitor | `string` | `""` | no |
| <a name="input_severity_web_serverfarms_cpu_percentage"></a> [severity\_web\_serverfarms\_cpu\_percentage](#input\_severity\_web\_serverfarms\_cpu\_percentage) | Define severity for monitor [web\_serverfarms\_cpu\_percentage] | `string` | `"1"` | no |
| <a name="input_severity_web_serverfarms_memory_percentage"></a> [severity\_web\_serverfarms\_memory\_percentage](#input\_severity\_web\_serverfarms\_memory\_percentage) | Define severity for monitor [web\_serverfarms\_memory\_percentage] | `string` | `"1"` | no |
| <a name="input_severity_web_serverfarms_status"></a> [severity\_web\_serverfarms\_status](#input\_severity\_web\_serverfarms\_status) | Define severity for monitor [web\_serverfarms\_status] | `string` | `"1"` | no |
| <a name="input_team_in_charge"></a> [team\_in\_charge](#input\_team\_in\_charge) | Define the team in charge | `string` | `"Undefined"` | no |
| <a name="input_template"></a> [template](#input\_template) | Template name | `string` | `"azure-web_serverfarms"` | no |
| <a name="input_threshold_critical_recovery_web_serverfarms_cpu_percentage"></a> [threshold\_critical\_recovery\_web\_serverfarms\_cpu\_percentage](#input\_threshold\_critical\_recovery\_web\_serverfarms\_cpu\_percentage) | Monitor [web\_serverfarms\_cpu\_percentage] critical recovery threshold | `string` | `"75"` | no |
| <a name="input_threshold_critical_recovery_web_serverfarms_memory_percentage"></a> [threshold\_critical\_recovery\_web\_serverfarms\_memory\_percentage](#input\_threshold\_critical\_recovery\_web\_serverfarms\_memory\_percentage) | Monitor [web\_serverfarms\_memory\_percentage] critical recovery threshold | `string` | `"90"` | no |
| <a name="input_threshold_critical_recovery_web_serverfarms_status"></a> [threshold\_critical\_recovery\_web\_serverfarms\_status](#input\_threshold\_critical\_recovery\_web\_serverfarms\_status) | Monitor [web\_serverfarms\_status] critical recovery threshold | `string` | `"0.9"` | no |
| <a name="input_threshold_critical_web_serverfarms_cpu_percentage"></a> [threshold\_critical\_web\_serverfarms\_cpu\_percentage](#input\_threshold\_critical\_web\_serverfarms\_cpu\_percentage) | Monitor [web\_serverfarms\_cpu\_percentage] critical threshold | `string` | `"95"` | no |
| <a name="input_threshold_critical_web_serverfarms_memory_percentage"></a> [threshold\_critical\_web\_serverfarms\_memory\_percentage](#input\_threshold\_critical\_web\_serverfarms\_memory\_percentage) | Monitor [web\_serverfarms\_memory\_percentage] critical threshold | `string` | `"95"` | no |
| <a name="input_threshold_critical_web_serverfarms_status"></a> [threshold\_critical\_web\_serverfarms\_status](#input\_threshold\_critical\_web\_serverfarms\_status) | Monitor [web\_serverfarms\_status] critical threshold | `string` | `"0.8"` | no |
| <a name="input_timeframe_web_serverfarms_cpu_percentage"></a> [timeframe\_web\_serverfarms\_cpu\_percentage](#input\_timeframe\_web\_serverfarms\_cpu\_percentage) | Monitor timeframe for monitor [web\_serverfarms\_cpu\_percentage] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_1h"` | no |
| <a name="input_timeframe_web_serverfarms_memory_percentage"></a> [timeframe\_web\_serverfarms\_memory\_percentage](#input\_timeframe\_web\_serverfarms\_memory\_percentage) | Monitor timeframe for monitor [web\_serverfarms\_memory\_percentage] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_1h"` | no |
| <a name="input_timeframe_web_serverfarms_status"></a> [timeframe\_web\_serverfarms\_status](#input\_timeframe\_web\_serverfarms\_status) | Monitor timeframe for monitor [web\_serverfarms\_status] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_1h"` | no |
| <a name="input_tolerance_rate_web_serverfarms_cpu_percentage"></a> [tolerance\_rate\_web\_serverfarms\_cpu\_percentage](#input\_tolerance\_rate\_web\_serverfarms\_cpu\_percentage) | Give leverage for a mitigation value to limit in case of low connection | `string` | `"1"` | no |
| <a name="input_tolerance_rate_web_serverfarms_memory_percentage"></a> [tolerance\_rate\_web\_serverfarms\_memory\_percentage](#input\_tolerance\_rate\_web\_serverfarms\_memory\_percentage) | Give leverage for a mitigation value to limit in case of low connection | `string` | `"1"` | no |
| <a name="input_tolerance_rate_web_serverfarms_status"></a> [tolerance\_rate\_web\_serverfarms\_status](#input\_tolerance\_rate\_web\_serverfarms\_status) | Give leverage for a mitigation value to limit in case of low connection | `string` | `"1"` | no |
| <a name="input_type_web_serverfarms_cpu_percentage"></a> [type\_web\_serverfarms\_cpu\_percentage](#input\_type\_web\_serverfarms\_cpu\_percentage) | Type for monitor [web\_serverfarms\_cpu\_percentage] among incident, information | `string` | `"incident"` | no |
| <a name="input_type_web_serverfarms_memory_percentage"></a> [type\_web\_serverfarms\_memory\_percentage](#input\_type\_web\_serverfarms\_memory\_percentage) | Type for monitor [web\_serverfarms\_memory\_percentage] among incident, information | `string` | `"incident"` | no |
| <a name="input_type_web_serverfarms_status"></a> [type\_web\_serverfarms\_status](#input\_type\_web\_serverfarms\_status) | Type for monitor [web\_serverfarms\_status] among incident, information | `string` | `"incident"` | no |

## Outputs

No outputs.
