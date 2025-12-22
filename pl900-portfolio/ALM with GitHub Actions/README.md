# ALM with GitHub Actions

## 🎯 Objective
Implement an automated Application Lifecycle Management (ALM) pipeline using GitHub Actions to export, unpack, store, pack, and import Power Platform solutions through Dev → Test → Prod.

## 🧠 Skills Learned
- Setting up GitHub repositories for Power Platform ALM  
- Connecting GitHub to Power Platform using a Service Principal  
- Using Power Platform CLI (PAC CLI)  
- Automating exports and imports for managed/unmanaged solutions  
- Creating CI/CD deployment pipelines  

## 📌 Prerequisites
- Azure AD App Registration (Service Principal)  
- GitHub repository  
- GitHub Actions enabled  
- Power Platform CLI installed locally (optional)  
- Existing solution in Dev environment  

## 📁 Lab Structure
- **Dev:** Unmanaged solution  
- **GitHub Repo:** Stores source-controlled solution files  
- **Test/Prod:** Managed solution deployment  

## 📝 Short Summary of Lab Steps
1. Create a GitHub repository for ALM  
2. Register an Azure AD app + grant Power Platform API permissions  
3. Store credentials in GitHub Secrets  
4. Set up folder structure for ALM  
5. Configure GitHub Action workflow  
6. Export/Unpack solution from Dev → Commit to GitHub  
7. Pack/Import solution into Test/Prod  
8. Validate automated ALM pipeline  

## 🛠 Tools & Services Used
- GitHub  
- GitHub Actions  
- Azure AD App Registration  
- Power Platform Admin Center  
- Power Platform CLI (PAC CLI)  

## 🎉 Expected Outcome
A fully automated CI/CD pipeline where updating a solution in Dev automatically pushes updated packages into Test and Prod environments using GitHub Actions.
