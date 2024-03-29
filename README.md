<!-- BEGIN MODULE HOOK -->

<!-- Update the title to match the module name and add a description -->
# Terraform Modules Template Project
<!-- UPDATE BADGE: Update the link for the following badge-->
[![Incubating (Not yet consumable)](https://img.shields.io/badge/status-Incubating%20(Not%20yet%20consumable)-red)](https://terraform-ibm-modules.github.io/documentation/#/badge-status)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![latest release](https://img.shields.io/github/v/release/terraform-ibm-modules/terraform-ibm-icse-security-group-module?logo=GitHub&sort=semver)](https://github.com/terraform-ibm-modules/terraform-ibm-icse-security-group-module/releases/latest)

<!-- Remove the content in this H2 heading after completing the steps -->

## Submit a new module

:+1::tada: Thank you for taking the time to contribute! :tada::+1:

This template repository exists to help you create Terraform modules for IBM Cloud.

The default structure includes the following files:

- `README.md`: A description of the module
- `main.tf`: The logic for the module
- `version.tf`: The required terraform and provider versions
- `variables.tf`: The input variables for the module
- `outputs.tf`: The values that are output from the module
For more information, see [Module structure](https://terraform-ibm-modules.github.io/documentation/#/module-structure) in the project documentation.

You can add other content to support what your module does and how it works. For example, you might add a `scripts/` directory that contains shell scripts that are run by a `local-exec` `null_resource` in the Terraform module.

Follow this process to create and submit a Terraform module.

### Create a repo from this repo template

1.  Create a repository from this repository template by clicking `Use this template` in the upper right of the GitHub UI.
&emsp;&emsp;&emsp;&emsp;<br>For more information about creating a repository from a template, see the [GitHub docs](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template).
1.  Select `terraform-ibm-modules` as the owner.
1.  Enter a name for the module in format `terraform-ibm-<NAME>`, where `<NAME>` reflects the type of infrastructure that the module manages.
&emsp;&emsp;&emsp;&emsp;<br>Use hyphens as delimiters for names with multiple words (for example, terraform-ibm-`activity-tracker`).
1.  Provide a short description of the module.
&emsp;&emsp;&emsp;&emsp;<br>The description is displayed under the repository name on the [organization page](https://github.com/terraform-ibm-modules) and in the **About** section of the repository. Use the description to help users understand the purpose of your module. For more information, see [module names and descriptions](https://terraform-ibm-modules.github.io/documentation/#/implementation-guidelines?id=module-names-and-descriptions) in the docs.

### Clone the repo and set up your development environment

Locally clone the new repository and set up your development environment by completing the tasks in [Local development setup](https://terraform-ibm-modules.github.io/documentation/#/local-dev-setup) in the project documentation.

### Update the repo name and description in source control

To help make sure that the repo name and description are not changed except through pull requests, they are defined in the `settings.yml` file.

Check to make sure that values are uncommented and correct:

1.  Open the [settings.yml](.github/settings.yml) file.
1.  If not already updated, uncomment the `name` and `description` properties and set the values to what you specified when you requested the repo.

### Update the Terraform files

Implement the logic for your module by updating the `main.tf`, `version.tf`, `variables.tf`, and `outputs.tf` Terraform files. For more information, see [Creating Terraform on IBM Cloud templates](https://cloud.ibm.com/docs/ibm-cloud-provider-for-terraform?topic=ibm-cloud-provider-for-terraform-create-tf-config).

### Create examples and tests

Add one or more examples in the `examples` directory that consume your new module, and configure tests for them in the `tests` directory. For more information about tests, see [Tests](https://terraform-ibm-modules.github.io/documentation/#/tests).

### Update the content in the readme file

After you implement the logic for your module and create examples and tests, update this readme file in your repository by following these steps:

1.  Update the title heading and add a description about your module.
1.  Update the badge links.
1.  Remove all the content in this H2 heading section.
1.  Complete the [Usage](#usage) and [Required IAM access policies](#required-iam-access-policies) sections. The [Examples](#examples) and [Requirements](#requirements) section are populated by a pre-commit hook.

### Commit your code and submit your module for review

1.  Before you commit any code, review [Contributing to the IBM Cloud Terraform modules project](https://terraform-ibm-modules.github.io/documentation/#/contribute-module) in the project documentation.
1.  Create a pull request for review.

### Post-merge steps

After the first PR for your module is merged, follow these post-merge steps:

1.  Create a PR to enable the upgrade test by removing the `t.Skip` line in `tests/pr_test.go`.

<!-- Remove the content in this previous H2 heading -->

## Usage

<!--
Add an example of the use of the module in the following code block.

Use real values instead of "var.<var_name>" or other placeholder values
unless real values don't help users know what to change.
-->

```hcl

```

## Required IAM access policies

<!-- PERMISSIONS REQUIRED TO RUN MODULE
If this module requires permissions, uncomment the following block and update
the sample permissions, following the format.
Replace the sample Account and IBM Cloud service names and roles with the
information in the console at
Manage > Access (IAM) > Access groups > Access policies.
-->

<!--
You need the following permissions to run this module.

- Account Management
    - **Sample Account Service** service
        - `Editor` platform access
        - `Manager` service access
    - IAM Services
        - **Sample Cloud Service** service
            - `Administrator` platform access
-->

<!-- NO PERMISSIONS FOR MODULE
If no permissions are required for the module, uncomment the following
statement instead the previous block.
-->

<!-- No permissions are needed to run this module.-->
<!-- END MODULE HOOK -->
<!-- BEGIN EXAMPLES HOOK -->
## Examples

- [Examples](examples)

<!-- END EXAMPLES HOOK -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_ibm"></a> [ibm](#requirement\_ibm) | >=1.49.0 |

### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_security_group_map"></a> [security\_group\_map](#module\_security\_group\_map) | ./config_modules/list_to_map | n/a |
| <a name="module_security_group_rules_map"></a> [security\_group\_rules\_map](#module\_security\_group\_rules\_map) | ./config_modules/nested_list_to_map_and_merge | n/a |

### Resources

| Name | Type |
|------|------|
| [ibm_is_security_group.security_group](https://registry.terraform.io/providers/IBM-Cloud/ibm/latest/docs/resources/is_security_group) | resource |
| [ibm_is_security_group_rule.rule](https://registry.terraform.io/providers/IBM-Cloud/ibm/latest/docs/resources/is_security_group_rule) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_prefix"></a> [prefix](#input\_prefix) | The prefix that you would like to append to your resources | `string` | `"icse"` | no |
| <a name="input_resource_group_id"></a> [resource\_group\_id](#input\_resource\_group\_id) | ID of the resource group where gateways will be provisioned | `string` | `null` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | Security groups for VPC | <pre>list(<br>    object({<br>      name = string<br>      rules = list(<br>        object({<br>          name      = string<br>          direction = string<br>          remote    = string<br>          tcp = optional(<br>            object({<br>              port_max = number<br>              port_min = number<br>            })<br>          )<br>          udp = optional(<br>            object({<br>              port_max = number<br>              port_min = number<br>            })<br>          )<br>          icmp = optional(<br>            object({<br>              type = number<br>              code = number<br>            })<br>          )<br>        })<br>      )<br>    })<br>  )</pre> | <pre>[<br>  {<br>    "name": "test-group",<br>    "rules": [<br>      {<br>        "direction": "inbound",<br>        "name": "allow-ssh",<br>        "remote": "0.0.0.0/0",<br>        "tcp": {<br>          "port_max": 22,<br>          "port_min": 22<br>        }<br>      }<br>    ]<br>  }<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tags for the resource created | `list(string)` | `null` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC where public gateways will be created | `string` | `null` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_groups"></a> [groups](#output\_groups) | List of security group names and ids |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- BEGIN CONTRIBUTING HOOK -->

<!-- Leave this section as is so that your module has a link to local development environment set up steps for contributors to follow -->
## Contributing

You can report issues and request features for this module in GitHub issues in the module repo. See [Report an issue or request a feature](https://github.com/terraform-ibm-modules/.github/blob/main/.github/SUPPORT.md).

To set up your local development environment, see [Local development setup](https://terraform-ibm-modules.github.io/documentation/#/local-dev-setup) in the project documentation.
<!-- Source for this readme file: https://github.com/terraform-ibm-modules/common-dev-assets/tree/main/module-assets/ci/module-template-automation -->
<!-- END CONTRIBUTING HOOK -->
