# matrix-deploy



## Prerequisites

- Ansible
- Terraform


First, run:
```bash
gcloud auth application-default login
```
so you don’t need set up GCP access manually.

## Generate SSH Key Pair

- Run the following command to generate elliptic curve ssh key pair

```bash
ssh-keygen -t ed25519 -f ansbile_ed25519 -C ansible
```

- **Optionally**, you can generate RSA key pair

```bash
ssh-keygen -t rsa -f ansbile -C ansible -b 2048##
```

## Add SSH Key to GCP Project

- Go to compute engine section
- Click Metadata
- Select `SSH KEYS` tab and click `ADD SSH KEY`
- Copy public key from `ansbile_ed25519.pub` file.


## Add SSH Key to /ansible/ansible.cfg

```bash
private_key_file = <path_to_your_private_key>
```

## Add GCP project_id in main.tf and run:

```bash
terraform init
terraform apply
```

## Add IP adresses from terraform output to /ansible/inventory, and run playbook:

```bash
ansible-playbook provision.yaml
```

## Edit  .github/workflows/main.yml (hosts list) and launch your workflow. 


## Check results.



