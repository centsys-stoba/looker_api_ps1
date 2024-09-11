Param(
    [string]$HostUrl,
    [int]$Port = 19999,
    [string]$ApiToken
)

$uri = $HostUrl + ":" + $Port + "/api/4.0/users"
$headers = @{
    "Content-Type" = "application/json"
    "Authorization" = "token $ApiToken"
}
$response = Invoke-RestMethod -Method Get -Headers $headers -Uri $uri
$response