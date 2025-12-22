# 🔐 Assign Managed Identity to Azure Resource

## 🎯 Objective
This lab demonstrates how to assign and use **Managed Identities** in Azure to securely authenticate Azure resources without storing credentials. It showcases best practices for identity-based access to Azure services and aligns with SC-300 and Zero Trust principles.

By completing this lab, you will:
- Assign a system-assigned or user-assigned managed identity
- Grant role-based access to Azure resources
- Validate secure, credential-free authentication
- Demonstrate identity integration between Entra ID and Azure resources

---

## 🧰 Tools & Services Used
- Microsoft Entra ID
- Azure Portal
- Azure Resource Manager (ARM)
- Azure RBAC
- Azure CLI or PowerShell

---

## 📝 Prerequisites
- Azure subscription
- Entra ID tenant
- Contributor or Owner role on Azure resources
- Azure CLI or PowerShell installed

---

## 🧪 Lab Steps (Summary)
1. Create or select an Azure resource
2. Enable managed identity
3. Assign RBAC permissions
4. Validate managed identity access
5. Review sign-in logs

---

## 📸 Screenshot Guidance
- Managed identity enabled on resource
- Role assignment confirmation
- Resource access using managed identity
- Sign-in logs verification

---

## 🚀 Expected Outcome
- Managed identity successfully assigned
- Secure access to Azure resources without secrets
- RBAC enforced using Entra ID identities
- Demonstrates enterprise-grade identity security
