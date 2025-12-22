# Lab 11 – Global Secure Email Rollout Using Domain & Tenant Settings

## 🎯 Objective
Learn how to configure Microsoft Entra and Microsoft 365 tenant/domain settings to securely roll out email for all users, enforce secure authentication, and ensure safe mail flow across multiple domains.

## 🧰 Azure Services Used
- Microsoft Entra ID
- Microsoft 365 Admin Center
- Azure Portal
- Exchange Online
- Conditional Access
- PowerShell / Graph API

## 📁 Folder Structure
- **docs/** – step-by-step walkthrough and diagrams  
- **scripts/** – automation scripts for domain & mail configuration  
- **screenshots/** – screenshots validating each step  

## 📝 Prerequisites
- Azure account  
- Microsoft 365 Global Administrator  
- Domains added to Microsoft 365 tenant  
- Test users for email rollout  

## 🧪 Lab Steps (Summary)
1. Verify domains and configure DNS records  
2. Configure default domain for email routing  
3. Enable security defaults and MFA enforcement  
4. Configure Exchange Online mail flow and anti-phishing policies  
5. Test email sending and receiving across domains  
6. Monitor security and compliance alerts  

## ✅ Expected Outcome
- All domains verified and configured for secure email  
- Users can send/receive email safely  
- Security policies enforced via Conditional Access and MFA  
- Admin can monitor mail flow and compliance  

## 🚀 Automation (Optional)
Use `/scripts/global-email-rollout.ps1` to automate domain verification and initial policy application.
