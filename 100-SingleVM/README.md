# Deploy Linux Virtual Machine

### ARM Reference

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

Create a VM Network Interface
```bash
az group deployment create -g training --template-file 002-deploy.json
```

Create a Linux VM
```bash
az group deployment create -g training --template-file 003-deploy.json
```

### Challenges

1. Identify a new operating system image that is not Ubuntu 16.04 LTS and redeploy the VM.

2. Replace password with SSH key.

3. Parameterize the template so it can be more general purpose, such as VM name, SKU, etc.