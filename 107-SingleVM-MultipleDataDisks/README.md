# Deploy Linux Virtual Machine

### ARM Reference

* [Types of Virtual Machines](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/sizes-memory)
* [Virtual Network](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/virtualnetworks)
* [Virtual Machine Network Interface](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/networkinterfaces)
* [Virtual Machine](https://docs.microsoft.com/en-us/azure/templates/microsoft.compute/virtualmachines)


### Script

Create a resource group
```bash
az group create -n training -l canadacentral
```

Create a virtual machine with 2 data disks
```bash
az group deployment create -g training --template-file 001-deploy.json
```


### Challenges

1. How many data disks can be attached to a VM that is Standard_E16_v3?

2. Can a VM have both HDD and SSD?  Explain.

3. What are the throttling factors of data disks?

4. How to increase IOPS and disk bandwidth?