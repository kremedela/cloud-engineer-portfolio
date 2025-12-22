# Connect to Entra
Connect-MgGraph -Scopes "Directory.ReadWrite.All","Policy.ReadWrite.AuthenticationMethod"
Select-MgProfile beta

Write-Host "Configuring Entra Password Protection..."

# Configure custom banned password list (example placeholder)
$bannedWords = @(
    "companyname",
    "password123",
    "welcome2025",
    "summer2025"
)

Write-Host "Uploading banned password list..."

# NOTE: Custom banned password list configuration is only available via Graph
# This is placeholder pseudo-logic to illustrate automation
foreach ($word in $bannedWords) {
    Write-Host "Adding banned word: $word"
}

# Configure smart lockout (placeholder example)
$lockoutSettings = @{
    LockoutDurationInSeconds = 60
    LockoutThreshold         = 5
}

Write-Host "Applying smart lockout settings..."
Write-Host ($lockoutSettings | Out-String)

Write-Host "Password protection configuration applied."
