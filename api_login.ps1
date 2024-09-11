Param(
    [string]$HostUrl,
    [int]$Port = 19999,
    [string]$ApiKeyClientKey,
    [string]$ApiKeyClientSecret
)

$uri = $HostUrl + ":" + $Port + "/api/4.0/login"
$headers = @{
    "Content-Type" = "application/x-www-form-urlencoded"
}
$body = "client_id=$ApiKeyClientKey&client_secret=$ApiKeyClientSecret"
$response = Invoke-RestMethod -Method Post -Headers $headers -Body $body -Uri $uri
$response.access_token