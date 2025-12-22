# 🛡️ Conditional Access Controls – Session & Device

## 🎯 Objective
This lab demonstrates how to configure **Conditional Access policies** in Microsoft Entra ID that enforce **device compliance** and **session controls** in alignment with **Zero Trust** security principles.

By completing this lab, you will:
- Enforce access based on device compliance
- Apply session controls for cloud apps
- Restrict unmanaged or risky devices
- Validate Conditional Access behavior through sign-ins

---

## 🧰 Tools & Services Used
- Microsoft Entra ID
- Conditional Access
- Intune (for device compliance)
- Azure Portal
- Entra Sign-in Logs

---

## 📝 Prerequisites
- Entra ID tenant
- Global Administrator or Conditional Access Administrator role
- At least one compliant and one non-compliant device
- Intune configured for device compliance

---

## 🧪 Lab Steps (Summary)
1. Create Conditional Access policy
2. Configure device-based access controls
3. Apply session controls
4. Test access scenarios
5. Review sign-in and audit logs

---

## 📸 Screenshot Guidance
- Conditional Access policy overview
- Device compliance configuration
- Session control settings
- Successful compliant sign-in
- Blocked or restricted sign-in

---

## 🚀 Expected Outcome
- Only compliant devices can access selected apps
- Unmanaged devices are restricted or blocked
- Session controls are enforced
- Sign-in logs validate policy behavior
