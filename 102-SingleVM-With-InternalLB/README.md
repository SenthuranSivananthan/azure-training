# Deploy Linux Virtual Machine with Internal Layer 4 Load Balancer

### ARM Reference

* [Layer 4 Load Balancer](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/loadbalancers)
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

Create an Internal Load Balancer
```bash
az group deployment create -g training --template-file 002-deploy.json
```

Create a Linux VM and attach to Load Balancer
```bash
az group deployment create -g training --template-file 003-deploy.json
```

### Challenges

1. How do you allocate a static IP to the load balancer?

2. How do you add another VM to the load balancer?

3. How do you limit traffic to the VM(s) only through the Load Balancer?