# Lab 14 – Zero-Trust Enforcement Using Group & Device Settings

## 🎯 Objective
Learn how to implement Zero-Trust principles in Microsoft Entra by controlling access based on user groups, device compliance, and security policies.

## 🧰 Azure Services Used
- Microsoft Entra ID
- Azure Portal
- Conditional Access
- Device Compliance Policies
- Groups (Dynamic and Security)
- PowerShell / Graph API

## 📁 Folder Structure
- **docs/** – diagrams, policy notes, and troubleshooting  
- **scripts/** – PowerShell/Graph scripts for automation  
- **screenshots/** – proof of group/device configuration and policy enforcement  

## 📝 Prerequisites
- Azure account  
- Global Administrator or Conditional Access Administrator  
- Test users and devices  
- Azure AD Premium P1 or P2 license (for Conditional Access and device compliance)  

## 🧪 Lab Steps (Summary)
1. Create security groups for Zero-Trust enforcement  
2. Configure device compliance policies  
3. Apply Conditional Access policies scoped to groups and compliant devices  
4. Test access for compliant and non-compliant devices  
5. Document enforcement and policy results  

## ✅ Expected Outcome
- Users in targeted groups can access apps only from compliant devices  
- Non-compliant devices are blocked or limited  
- Zero-Trust policies enforced using groups and device state  
- Understanding of group-scoped Conditional Access and device compliance  

## 🚀 Automation (Optional)
Use `/scripts/zero-trust.ps1` to create groups, assign users, and apply Conditional Access policies automatically.
