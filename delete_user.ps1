Param(
    [string]$HostUrl,
    [int]$Port = 19999,
    [string]$ApiToken,
    [int]$UserId
)

$uri = $HostUrl + ":" + $Port + "/api/4.0/users/" + $UserId
$headers = @{
    "Content-Type" = "application/json"
    "Authorization" = "token $ApiToken"
}
$response = Invoke-RestMethod -Method Delete -Headers $headers -Uri $uri
$response