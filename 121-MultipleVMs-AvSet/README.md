# Deploy multiple Linux Virtual Machines in an Availability Set

### ARM Reference
* [ARM Function: concat](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-template-functions-array#concat)
* [ARM Function: copyIndex](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-template-functions-numeric#copyindex)
* [Deploying multiple instances](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-create-multiple)
* [Availability Sets](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/manage-availability#configure-multiple-virtual-machines-in-an-availability-set-for-redundancy)
* [Virtual Network](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/virtualnetworks)
* [Virtual Machine Network Interface](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/networkinterfaces)
* [Virtual Machine](https://docs.microsoft.com/en-us/azure/templates/microsoft.compute/virtualmachines)


### Script

Create a resource group
```bash
az group create -n training -l canadacentral
```

Create a virtual network and availability set
```bash
az group deployment create -g training --template-file 001-deploy.json
```

Create multiple VM Network Interfaces
```bash
az group deployment create -g training --template-file 002-deploy.json
```

Create multiple Linux VM and attach to availability set
```bash
az group deployment create -g training --template-file 003-deploy.json
```

### Challenges

1. How many fault domains are available in East US & UK South?

2. What is the maximum update domains per availability set?

3. Should VMs in multiple tiers (web, app, db) of an application be added into a single availability set?  Explain.

4. If there are 20 update domains in an Availability Set and there are 40 VMs, how many VMs will be restarted during planned maintenance?