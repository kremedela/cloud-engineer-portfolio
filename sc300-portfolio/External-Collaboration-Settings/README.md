# External Collaboration Settings in Microsoft Entra ID

## 🎯 Objective
Learn how to configure and manage external collaboration settings in Microsoft Entra ID to control guest user access, consent, and sharing policies, simulating enterprise scenarios with partners, vendors, or contractors.

## 🧰 Azure Services Used
- Microsoft Entra ID (Azure AD)
- Azure Portal
- PowerShell (optional)

## 📁 Folder Structure
- **docs/** – full detailed lab steps in plain text  
- **scripts/** – optional automation scripts  
- **screenshots/** – proof of completion  

## 📝 Prerequisites
- Azure subscription with Global Administrator or User Administrator role  
- At least one guest user already invited  
- Modern web browser  

## 🧪 Lab Steps (Summary)
1. Review default external collaboration settings  
2. Configure guest user permissions  
3. Configure collaboration restrictions (domains, invitation policies)  
4. Test access for guest users  
5. Optional: automate settings verification via PowerShell  

## ✅ Expected Outcome
- External collaboration settings are customized for enterprise security  
- Guest users can only access allowed resources  
- Invitation and sharing restrictions are applied  
- Automation script verifies settings  

## 🚀 Optional Automation
Use `/scripts/verify-collaboration-settings.ps1` to check current guest access and policy configuration.
