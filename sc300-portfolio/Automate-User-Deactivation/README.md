# ⛔ Automate User Deactivation in Microsoft Entra ID

## 🎯 Objective
This lab demonstrates how to **automate user deactivation** in Microsoft Entra ID to support secure offboarding, reduce security risk, and enforce least-privilege access.

By completing this lab, you will:
- Disable user accounts using automation
- Remove group and role assignments
- Block sign-ins immediately
- Validate deactivation using audit logs and user status checks

---

## 🧰 Tools & Services Used
- Microsoft Entra ID
- Microsoft Graph PowerShell
- Entra ID Users & Groups
- Entra ID Audit Logs

---

## 📝 Prerequisites
- Entra ID tenant
- Global Administrator or User Administrator role
- Test user account
- PowerShell 7 with Microsoft.Graph module installed

---

## 🧪 Lab Steps (Summary)
1. Identify user for deactivation
2. Disable user sign-in
3. Remove group memberships
4. Remove assigned roles
5. Verify deactivation and audit logs

---

## 📸 Screenshot Guidance
- User account before deactivation
- PowerShell execution
- User sign-in blocked status
- Group membership removal
- Audit log confirmation

---

## 🚀 Expected Outcome
- User access fully revoked
- No remaining group or role permissions
- Deactivation recorded in audit logs
- Secure, repeatable offboarding process
