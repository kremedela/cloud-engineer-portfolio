# 🛡️ Configure Conditional Access App Control in Microsoft Entra ID

## 🎯 Objective
This lab demonstrates how to **apply Conditional Access App Control (CAAC)** policies using Microsoft Defender for Cloud Apps (MDCA) to protect applications and enforce session-level controls.

By completing this lab, you will:
- Configure CAAC policies for selected cloud apps
- Apply session controls (block, monitor, or restrict downloads)
- Integrate CAAC with Conditional Access policies
- Validate enforcement through test sign-ins

---

## 🧰 Tools & Services Used
- Microsoft Entra ID
- Conditional Access
- Defender for Cloud Apps (MDCA)
- Cloud apps / SaaS applications
- Sign-in logs and session monitoring

---

## 📝 Prerequisites
- Entra ID tenant
- Defender for Cloud Apps license
- Admin privileges in MDCA and Conditional Access
- Test user accounts (internal and guest)
- At least one cloud/SaaS app connected to MDCA

---

## 🧪 Lab Steps (Summary)
1. Identify cloud apps for protection
2. Configure a CAAC policy in MDCA
3. Apply the CAAC policy via Conditional Access
4. Configure session controls (monitor/block/restrict)
5. Test user and guest sign-ins
6. Review audit logs and enforcement results

---

## 📸 Screenshot Guidance
- Cloud apps overview
- CAAC policy creation screen
- Conditional Access policy applying CAAC
- Session controls configuration
- Successful enforcement during user sign-in
- Sign-in and session logs
