# Analyze Defender XDR Security Reports

## 🎯 Objective
Learn how to review Microsoft Defender XDR security reports, identify patterns and trends, and respond to findings. This lab simulates real-world SOC tasks such as analyzing alert volume, categorizing incidents, and recommending security improvements based on report insights.

## 🧰 Microsoft Services Used
- Microsoft Defender XDR
- Microsoft 365 Security Portal
- Microsoft Graph PowerShell
- Microsoft Defender for Endpoint, Office 365, and Cloud Apps reports

## 📁 Folder Structure
- **docs/** – full step-by-step lab instructions
- **scripts/** – PowerShell scripts to export reports
- **screenshots/** – evidence of report review

## 📝 Prerequisites
- Microsoft 365 tenant with Defender XDR enabled
- Security Administrator, Security Operator, or SOC Analyst role
- Sample alerts or incidents available

## 🧪 Lab Steps (Summary)
1. Access Defender XDR reports in Microsoft 365 Security Portal
2. Analyze trends and alert volume by category and severity
3. Identify recurring alerts and patterns
4. Prioritize areas for remediation
5. Document recommendations
6. Export reports via PowerShell for further analysis

## ✅ Expected Outcome
- Ability to interpret Defender XDR reports
- Identify patterns and recurring threats
- Make informed recommendations to improve security posture
- Export data for reporting or SOC review

## 🚀 Optional Automation
Use `/scripts/defender-report-export.ps1` to export report data into a CSV for further analysis.
