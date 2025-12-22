# Lab 05 – Configure and Manage Domains in Microsoft Entra ID & Microsoft 365

## 🎯 Objective
Learn how to add, verify, manage, and configure custom domains in Microsoft Entra ID and Microsoft 365. This lab teaches real-world domain administration tasks including DNS verification, domain troubleshooting, and domain usage assignments.

## 🧰 Azure Services Used
- Microsoft Entra ID
- Microsoft 365 Admin Center
- Azure Portal
- External DNS Provider (GoDaddy, Cloudflare, Namecheap, etc.)
- Microsoft Graph PowerShell (optional)

## 📁 Folder Structure
- **docs/** – detailed walkthroughs  
- **scripts/** – PowerShell/Graph scripts  
- **screenshots/** – images validating completion  

## 📝 Prerequisites
- Azure account  
- Global Administrator permissions  
- Access to a custom DNS domain (or use a free temporary domain)  
- Modern browser  

## 🧪 Lab Steps (Summary)
1. Review existing domains in the tenant  
2. Add a custom domain to Microsoft Entra ID  
3. Configure DNS TXT record for verification  
4. Verify and activate the domain  
5. Assign the domain to users for email and UPNs  
6. Remove or set the primary domain (optional)

## ✅ Expected Outcome
- Successfully added and verified a custom domain  
- Able to assign users to the new domain  
- Understand DNS verification requirements  
- Understand domain capabilities and limitations in M365 & Entra ID  

## 🚀 Automation (Optional)
Use `/scripts/domain-management.ps1` to automate domain lookups, validation states, and user domain updates.
