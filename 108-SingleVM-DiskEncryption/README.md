# Deploy Virtual Machine with Disk Encryption

### ARM Reference

* [Types of Virtual Machines](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/sizes-memory)
* [Virtual Network](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/virtualnetworks)
* [Virtual Machine Network Interface](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/networkinterfaces)
* [Virtual Machine](https://docs.microsoft.com/en-us/azure/templates/microsoft.compute/virtualmachines)
* [Disk Encryption](https://docs.microsoft.com/en-us/azure/security/azure-security-disk-encryption)

### Script

Create a resource group
```bash
az group create -n training -l canadacentral
```

Manual steps
1. Create a Service Principal

2. Gather the Azure AD Tenant ID and the Service Principal Object Id

Create Azure Key Vault
```bash
az group deployment create -g training --template-file 001-deploy.json
```

Manual steps
1. Create a Secret and add the tags
    - DiskEncryptionKeyEncryptionAlgorithm = RSA-OAEP
    - DiskEncryptionKeyFileName = LinuxPassPhraseFileName

2. Create a Key Encryption Key

3. Gather the URL for both Secret & Key

Create a virtual machine encrypted disks 
```bash
az group deployment create -g training --template-file 002-deploy.json
```


### Challenges

1. Automate the manual steps in this lab.

2. How do you rotate the Key Encryption Key?