# Example: Get latest security alerts
Get-MpThreat | Where-Object {$_.Severity -ge 3} | Format-Table ThreatName, User, Device, Severity
# Mark resolved (pseudo-example, actual commands vary per API)
