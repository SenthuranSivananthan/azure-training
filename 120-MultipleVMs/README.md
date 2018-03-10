# Deploy Linux Virtual Machine

### ARM Reference
* [ARM Function: concat](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-template-functions-array#concat)
* [ARM Function: copyIndex](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-template-functions-numeric#copyindex)
* [Deploying multiple instances](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-create-multiple)
* [Virtual Network](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/virtualnetworks)
* [Virtual Machine Network Interface](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/networkinterfaces)
* [Virtual Machine](https://docs.microsoft.com/en-us/azure/templates/microsoft.compute/virtualmachines)


### Script

Create a resource group
```bash
az group create -n training -l canadacentral
```

Create a virtual network
```bash
az group deployment create -g training --template-file 001-deploy.json
```

Create multiple VM Network Interfaces
```bash
az group deployment create -g training --template-file 002-deploy.json
```

Create multiple Linux VM
```bash
az group deployment create -g training --template-file 003-deploy.json
```

### Challenges

1. Given 5 VMs are created in parallel, in which order would Azure create the resources?  Which resources will be sequential and which are parallel?

2. The resource names are 0-indexed, how would you make it start with 1 instead?  For example: vm-1, vm-2, etc.

