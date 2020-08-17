# tf-module-mysql

## Description

An Extenda Retail maintained Terraform Module, which is intended to create and modify MySQL resources.

## Providers

| Name   | Version   |
|:-------|:----------|
| mysql | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| db\_name | The name of the database | `string` | n\a | yes |
| endpoint | The address for the MySQL server connection | `string` | `localhost` | no |
| host | The source host of the user | `string` | `%` | no |
| password | Password for the server connection | `string` | n/a | yes |
| port | The port for the MySQL server connection | `string` | `3306` | no |
| user | The name of the user | `string` | n/a | yes |
| username | Username for the server connection | `string` | `default` | no |

## Outputs

| Name | Description |
|------|-------------|
| db\_name | The name of the database |
| user | The name of the user |
| password | The password for the created user |
