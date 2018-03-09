# Deploy Linux Virtual Machine

### ARM Reference

* [Virtual Network](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/virtualnetworks)
* [Network Security Groups](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/networksecuritygroups)
* [Public IP Addresses](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/publicipaddresses)
* [Virtual Machine Network Interface](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/networkinterfaces)
* [Virtual Machine](https://docs.microsoft.com/en-us/azure/templates/microsoft.compute/virtualmachines)


### Script

Create a resource group
```bash
az group create -n training -l canadacentral
```

Create a network security group (NSG)
```bash
az group deployment create -g training --template-file 001-deploy.json
```

Create a virtual network and attach NSG
```bash
az group deployment create -g training --template-file 002-deploy.json
```

Create a dynamic public IP addresses
```bash
az group deployment create -g training --template-file 003-deploy.json
```

Create a VM Network Interface
```bash
az group deployment create -g training --template-file 004-deploy.json
```

Create a Linux VM
```bash
az group deployment create -g training --template-file 005-deploy.json
```

### Challenges

1. Find the fully qualified domain name for the Public IP and SSH into the server.

2. Harden the NSG rule(s) such that it will allow SSH access only from your IP addresses.

3. Public IP is setup as dynamic.  What happens when the VM is deallocated?  What do you need to do to make the public IP is predictable?