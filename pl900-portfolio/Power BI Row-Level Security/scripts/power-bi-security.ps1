# Requires: MicrosoftPowerBIMgmt module

Connect-PowerBIServiceAccount

$workspace = "Dev Workspace"
$dataset = "RLS-Dataset"
$roleName = "RegionalManagers"
$userEmail = "manager@tenant.com"

$ws = Get-PowerBIWorkspace -Name $workspace
$ds = Get-PowerBIDataset -WorkspaceId $ws.Id | Where-Object { $_.Name -eq $dataset }
$role = Get-PowerBIRole -WorkspaceId $ws.Id -DatasetId $ds.Id | Where-Object { $_.Name -eq $roleName }

Add-PowerBIWorkspaceUser -Id $ws.Id -UserEmailAddress $userEmail -AccessRight Member
Add-PowerBIRoleMember -WorkspaceId $ws.Id -RoleId $role.Id -MemberEmailAddress $userEmail
