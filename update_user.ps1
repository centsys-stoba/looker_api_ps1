Param(
    [string]$HostUrl,
    [int]$Port = 19999,
    [string]$ApiToken,
    [int]$UserId,
    [string]$Email,
    [string]$FirstName,
    [string]$LastName,
    [int[]]$GroupIds = @(),
    [int[]]$RoleIds = @()
)

$uri = $HostUrl + ":" + $Port + "/api/4.0/users/" + $UserId
$headers = @{
    "Content-Type" = "application/json"
    "Authorization" = "token $ApiToken"
}
$body = @{
    email = $Email
    first_name = $FirstName
    last_name = $LastName
    group_ids = "[" + $($GroupIds -join ",") + "]"
    role_ids = "[" + $($RoleIds -join ",") + "]"
} | ConvertTo-Json
$response = Invoke-RestMethod -Method Patch -Headers $headers -Body $body -Uri $uri
$response