# SCCM Configuration Items
A collection of PowerShell script to be used as SCCM configuration Item.
Each subfolder has a different configuration item. Each configuration item has three files:
- The discovery script: a PowerShell script named after the SCCM configuration item;
- The remediation script: a PowerShell script in the form ConfigurationItemName_remediation.ps1;
- The description file: a .md file containing the description of the configuration item and the definition of the compliance rule;

## Configuration Items' descriptions
### Add User to Local Group
Add user (local or domain user) to a local group on each machine on which the configuration item is deployed

### Remove User to Local Group
Remove user (local or domain user) to a local group on each machine on which the configuration item is deployed