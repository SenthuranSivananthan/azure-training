# Enable boot diagnostics on Virtual Machines

### ARM Reference

* [Virtual Network](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/virtualnetworks)
* [Virtual Machine Network Interface](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/networkinterfaces)
* [Virtual Machine](https://docs.microsoft.com/en-us/azure/templates/microsoft.compute/virtualmachines)
* [Boot Diagnostics](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/boot-diagnostics)

### Script

Create a resource group
```bash
az group create -n training -l canadacentral
```

Create a VM
```bash
az group deployment create -g training --template-file 001-deploy.json
```

Enable Boot Diagnostics
```bash
az group deployment create -g training --template-file 002-deploy.json
```

### Challenges

1. What information is shown in boot diagnostics for Windows and Linux VMs?

2. Why is it necessary to create a storage account with a unique name?

3. Where are the boot diagnostics logs stored?