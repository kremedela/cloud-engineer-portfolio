# 🧩 Enterprise App Integration Demo (Microsoft Entra ID SSO + SCIM Provisioning)

This project demonstrates how to integrate a **custom SaaS app** with **Microsoft Entra ID (Azure AD)** for:
- 🔐 Single Sign-On (SSO) via OpenID Connect
- 👤 Automated user provisioning via SCIM 2.0

---

## 🧠 Overview

![Architecture](./architecture-diagram.png)

**Flow:**
1. User logs in with Microsoft Entra ID (OIDC)
2. Entra sends ID token → Flask app creates session
3. SCIM endpoint handles provisioning requests automatically

---

## 🛠️ Tech Stack

| Component | Technology |
|------------|-------------|
| Identity Provider | Microsoft Entra ID (Azure AD) |
| App Backend | Python Flask |
| Auth Protocol | OpenID Connect (OIDC) |
| Provisioning | SCIM 2.0 |
| Storage | In-memory / JSON |
| Deployment | Localhost or Azure App Service |
