$uri = $env:LOOKER_HOST_URL + "/api/4.0/users"
$headers = @{
    "Content-Type" = "application/json"
    "Authorization" = "token $($env:LOOKER_TEMPORARY_ACCESS_TOKEN)"
}
$response = Invoke-RestMethod -Method Get -Headers $headers -Uri $uri
$response