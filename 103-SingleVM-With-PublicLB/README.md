# Deploy Linux Virtual Machine with Public Layer 4 Load Balancer

### ARM Reference

* [Layer 4 Load Balancer](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/loadbalancers)
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

Create a Linux VM and attach to Load Balancer
```bash
az group deployment create -g training --template-file 003-deploy.json
```

### Challenges

1. In what order would Azure create the resources and why?

2. What is the Public IP address of the Load Balancer when there are no VMs in the backend pools?  How can you change the behaviour?

3. What is the problem that you see with load balancing on port 22?  What is the fix?