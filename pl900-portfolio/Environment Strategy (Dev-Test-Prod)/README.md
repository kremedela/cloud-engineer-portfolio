# Environment Strategy (Dev-Test-Prod)

## 🎯 Objective
Implement a structured Dev–Test–Prod environment strategy for Power Platform solutions, including environment creation, security boundaries, ALM configuration, and solution movement.

## 🧠 Skills Learned
- Understanding purpose of Dev, Test, and Prod environments  
- Creating and configuring environments  
- Setting up security roles per environment  
- Managing solution layers and versions  
- Moving managed/unmanaged solutions across environments  
- Implementing a basic ALM lifecycle  

## 📌 Prerequisites
- Power Platform admin center access  
- Minimum 3 environment licenses (or trial environments)  
- Basic understanding of Power Platform solutions  

## 🏗 Architecture Overview
**DEV → TEST → PROD Pipeline**

- **Dev:** Unmanaged solutions, building, modifying  
- **Test:** Managed solutions, UAT, functional testing  
- **Prod:** Managed, locked down, production workloads  

## 📝 Short Summary of Lab Steps
1. Create Dev, Test, and Prod environments  
2. Assign roles and restrict access  
3. Create an unmanaged solution in Dev  
4. Export solution as managed  
5. Import solution into Test  
6. Promote from Test → Prod  
7. Configure basic governance and ALM best practices  

## 📦 Deliverables
- Fully configured Dev, Test, Prod environments  
- Solution exported and promoted through each stage  
- Governance and ALM structure documented  
