# Incident Response Using Guided Hunting

## 🎯 Objective
Learn how to respond to security incidents in Microsoft Defender XDR using guided hunting. This lab simulates a real-world scenario where multiple alerts may be correlated into an incident. You will pivot across devices, users, email, and cloud signals to identify the root cause and impacted assets.

## 🧰 Microsoft Services Used
- Microsoft Defender XDR
- Microsoft Defender for Endpoint
- Microsoft Defender for Office 365
- Microsoft Entra ID
- Microsoft 365 Security Portal
- Microsoft Graph PowerShell

## 📁 Folder Structure
- **docs/** – step-by-step guided hunting instructions
- **scripts/** – PowerShell scripts for incident investigation
- **screenshots/** – evidence of guided hunting and incident investigation

## 📝 Prerequisites
- Microsoft 365 tenant with Defender XDR enabled
- Active incidents available (or test incident generated)
- Security Administrator, Security Operator, or SOC Analyst role
- Test endpoint and user accounts

## 🧪 Lab Steps (Summary)
1. Access active incidents in Defender XDR
2. Review correlated alerts and impacted entities
3. Use guided hunting queries to pivot across endpoints, users, email, and apps
4. Identify root cause and potential blast radius
5. Document investigation and determine response actions
6. Close the incident or escalate as necessary
7. Export incident details using PowerShell for reporting

## ✅ Expected Outcome
- Ability to investigate complex incidents using guided hunting
- Understanding of alert correlation and entity pivoting
- Identification of root cause and scope of incident
- Ability to document, report, and take action effectively

## 🚀 Optional Automation
Use `/scripts/guided-hunting.ps1` to automate extraction of incident details and generate a CSV report for SOC review or documentation.
