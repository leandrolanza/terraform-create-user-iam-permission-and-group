# terraform-create-user-iam-permission-and-group

This terraform project creats user and grups with especific permissions within AWS, with this module it is possible to leave the AWS IAM configuration as a code ensuring more security by creating groups with limited permissions within AWS.

This project have a modules

- group
- policy
- user

### Explaining the module

* **Module Group**

Provides an IAM AWS group and attach an policy

* **Module Policy**

Provides an IAM AWS policy

* **Module User**

Provides an IAM AWS user and attach an group



* all_policies.tf

All the rules that can be defined for the group are listed in this file, these rules are in blocks called "group_statements", for details on acticions see the AWS documentation.


* group_*.ft

This file contains modules that together are responsible for creating a specific group, attach a user to a group and add custom permissions according to the file "all_policies.tf"


### Initial settings terraform

To use terraform, we first have to configure the file `/home/user/.aws/credentials`. After these settings just run the command below to download terraform dependencies:

> terraform init

### Validating changes

To validate the changes that will be applied, simply execute the command below:

> terraform plan

### Applying the changes

After validation the `plan` command it is time to create all the resources of this project, to do so, run the command below:

> terraform apply

### Removing settings

To remove all  installation performed in the AWS environment, simply run the command:

> terraform destroy

### References

Learn about [Terraform](https://learn.hashicorp.com/terraform)

Learn about [AWS IAM](https://docs.aws.amazon.com/pt_br/IAM/latest/UserGuide/access_policies_create.html)
