# =========================================================
# Script: Create-AZ104-Labs.ps1
# Purpose: Automatically create folders and subfolders
# for AZ-104 labs portfolio.
# Author: Your Name
# =========================================================

# Root folder
$rootFolder = "C:\Users\$env:USERNAME\Documents\az104-portfolio"

# Define labs
$labs = @(
    "Lab01-Create-ACR",
    "Lab02-BuildPushImage",
    "Lab03-Deploy-ACI",
    "Lab04-Deploy-ContainerApps",
    "Lab05-ManageScalingContainers",
    "Lab06-Provision-AppServicePlan",
    "Lab07-Create-AppService",
    "Lab08-Configure-TLS-Certs",
    "Lab09-Map-Custom-DNS",
    "Lab10-Configure-AppService-Backup",
    "Lab11-AppService-Networking",
    "Lab12-Deployment-Slots"
)

# Subfolders for each lab
$subfolders = @("docs", "scripts", "templates", "screenshots")

# Loop through labs and create folder structure
foreach ($lab in $labs) {
    $labPath = Join-Path -Path $rootFolder -ChildPath $lab
    if (-not (Test-Path $labPath)) {
        New-Item -Path $labPath -ItemType Directory | Out-Null
    }

    foreach ($sub in $subfolders) {
        $subPath = Join-Path -Path $labPath -ChildPath $sub
        if (-not (Test-Path $subPath)) {
            New-Item -Path $subPath -ItemType Directory | Out-Null
        }
    }

    # Create a template README.md for each lab
    $readmePath = Join-Path -Path $labPath -ChildPath "README.md"
    if (-not (Test-Path $readmePath)) {
        @"
# $lab

**Estimated Time:** XX minutes  
**Difficulty:** Beginner/Intermediate  

---

## 🎯 Objectives
- Objective 1
- Objective 2
- Objective 3

---

## 🧰 Azure Services Used
| Service | Purpose |
|---------|---------|
|  |  |

---

## 📝 Lab Steps
1. Step 1
2. Step 2
3. Step 3

---

## ✅ Expected Outcome
- Outcome 1
- Outcome 2
- Outcome 3

---

## 📂 Lab Sections
1. docs/
2. scripts/
3. templates/
4. screenshots/
"@ | Out-File -FilePath $readmePath -Encoding utf8
    }
}

Write-Host "✅ AZ-104 lab folder structure created at $rootFolder"
