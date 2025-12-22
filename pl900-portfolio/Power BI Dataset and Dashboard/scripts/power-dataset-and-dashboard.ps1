# Optional: Generate sample CSV file for Power BI demo

$data = @()
1..50 | ForEach-Object {
    $data += [PSCustomObject]@{
        ID        = $_
        Category  = ("A","B","C","D") | Get-Random
        Amount    = Get-Random -Minimum 100 -Maximum 5000
        CreatedOn = (Get-Date).AddDays(-1 * (Get-Random -Minimum 1 -Maximum 90))
    }
}

$data | Export-Csv "C:\Temp\PowerBI-DemoData.csv" -NoTypeInformation

Write-Host "Sample dataset created at C:\Temp\PowerBI-DemoData.csv"
