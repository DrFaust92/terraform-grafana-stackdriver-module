# Terraform Grafana Stackdriver Module

This module provisions a Grafana stackdriver(GCP) data source and a GCP Service Account with minimal permissions.

## Usage

```terraform
provider "grafana" {
  url  = "SOME-URL"
  auth = "SOME-TOKEN" // dont keep this in your version control in clear text
}

provider "google" {
  project = "SOME-PROJECT"
  region  = "us-central1"
}


module "data_source" {
  source = "./gcp-source"

  project            = "some-gcp-project"
  service_account_id = "some-account-id"
}

```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |
| <a name="provider_grafana"></a> [grafana](#provider\_grafana) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_project_iam_member.data_source](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_service_account.data_source](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |
| [google_service_account_key.data_source](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_key) | resource |
| [grafana_data_source.data_source](https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/data_source) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project"></a> [project](#input\_project) | Google project to create resources in | `string` | `""` | no |
| <a name="input_service_account_id"></a> [service\_account\_id](#input\_service\_account\_id) | GCP service account name | `string` | `""` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->