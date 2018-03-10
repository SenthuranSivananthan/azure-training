# Deploy Linux Virtual Machine with Public Layer 4 Load Balancer

### ARM Reference

* [Layer 4 Load Balancer](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/loadbalancers)
* [Inbound NAT Rules](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/loadbalancers/inboundnatrules)
* [Public IP Addresses](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/publicipaddresses)
* [Virtual Network](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/virtualnetworks)
* [Virtual Machine Network Interface](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/networkinterfaces)
* [Virtual Machine](https://docs.microsoft.com/en-us/azure/templates/microsoft.compute/virtualmachines)


### Script

Create a resource group
```bash
az group create -n training -l canadacentral
```

Create a Virtual Network
```bash
az group deployment create -g training --template-file 001-deploy.json
```

Create a Public Load Balancer
```bash
az group deployment create -g training --template-file 002-deploy.json
```

Create a NAT rule for SSH
```bash
az group deployment create -g training --template-file 003-deploy.json
```

Create a Linux VM and attach to Load Balancer and NAT rule
```bash
az group deployment create -g training --template-file 004-deploy.json
```

### Challenges

1. How to add another VM with NAT on port 6000?

2. How to force SSH through the Load Balancer?

3. How to create a static IP with the Load Balancer?