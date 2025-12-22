# Lab 09 – Configure Tenant Restrictions for App Governance

## 🎯 Objective
Learn how to configure Microsoft Entra tenant restrictions (Tenant Restrictions v2) to control which third-party cloud apps and service principals users can access. This lab teaches real-world app governance, Zero Trust principles, and prevention of Shadow IT.

## 🧰 Azure Services Used
- Microsoft Entra ID
- Azure Portal
- Conditional Access
- Enterprise Applications
- Microsoft Graph PowerShell

## 📁 Folder Structure
- **docs/** – detailed walkthroughs  
- **scripts/** – automation scripts  
- **screenshots/** – screenshots validating configuration  

## 📝 Prerequisites
- Azure account  
- Global Administrator or Security Administrator  
- Modern browser  
- Test user (from earlier labs)

## 🧪 Lab Steps (Summary)
1. Review current enterprise app ecosystem  
2. Identify unmanaged/unauthorized cloud apps  
3. Configure Tenant Restrictions v2  
4. Create an Allowed Applications list  
5. Apply Conditional Access policy to enforce restrictions  
6. Validate restrictions using a test user

## ✅ Expected Outcome
- Only approved SaaS apps allowed for authentication  
- Unauthorized apps blocked before authentication  
- Conditional Access enforcing app governance  
- Test user validation demonstrating restricted access  

## 🚀 Automation (Optional)
Use `/scripts/tenant-restrictions.ps1` to automate viewing allowed apps and enforcing restrictions.
