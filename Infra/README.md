## Dosiier INFRA pour Déployer l'application PixelWarApp

providers.tf   →  Utilsation du provider aws (d'autre exemple openstack etc )
variables.tf   →  toutes les variables (region, instance type...)
vpc.tf         →  VPC + Subnet + IGW + Route Table + Security Group
ec2.tf         →  les VMs (master + worker)
outputs.tf     →  affiche les IPs à la fin du terraform apply

une fois déployé sur aws 
pour regarder les intances EC2 depuis terminal : 
```
aws ec2 describe-instances --query "Reservations[].Instances[].[Tags[?Key=='Name'].Value|[0],State.Name,PublicIpAddress,InstanceType]" --output table
```

```
aws ec2 describe-instances --query "Reservations[].Instances[].[Tags[?Key=='Name'].Value|[0],State.Name]" --output table
```