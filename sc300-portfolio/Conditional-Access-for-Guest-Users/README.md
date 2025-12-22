# 🛡️ Conditional Access for Guest Users in Microsoft Entra ID

## 🎯 Objective
This lab demonstrates how to **apply Conditional Access policies specifically to guest users** (B2B) in Microsoft Entra ID to enforce secure access, Zero Trust, and compliance.

By completing this lab, you will:
- Create Conditional Access policies targeting guest users
- Require MFA or compliant devices for guest sign-ins
- Enforce session controls for external collaborators
- Validate policy behavior via guest sign-ins and audit logs

---

## 🧰 Tools & Services Used
- Microsoft Entra ID
- Conditional Access
- Azure B2B Guest Users
- Entra Sign-in Logs

---

## 📝 Prerequisites
- Entra ID tenant
- Global Administrator or Conditional Access Administrator role
- At least one guest user (B2B) invited
- MFA enabled for guest users (optional)
- Intune device compliance (optional)

---

## 🧪 Lab Steps (Summary)
1. Identify guest users in your tenant
2. Create Conditional Access policy targeting guest users
3. Configure access requirements (MFA, compliant device)
4. Apply session controls
5. Test guest sign-ins
6. Review audit logs for enforcement

---

## 📸 Screenshot Guidance
- Guest user list
- Conditional Access policy targeting guests
- MFA or device compliance requirement setup
- Successful guest sign-in
- Blocked or restricted guest sign-in
- Sign-in logs confirming policy application

---

## 🚀 Expected Outcome
- Guest users are enforced with secure access policies
- MFA or device compliance required for external collaborators
- Access logging validates enforcement
- Demonstrates governance over B2B external identities
