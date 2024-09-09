$email      = $Args[0]
$first_name = $Args[1]
$last_name  = $Args[2]
$group_ids  = $Args[3]
$role_ids   = $Args[4]

$uri = $env:LOOKER_HOST_URL + "/api/4.0/users"
$headers = @{
    "Content-Type" = "application/json"
    "Authorization" = "token $($env:LOOKER_TEMPORARY_ACCESS_TOKEN)"
}
$body = @{
    email = $email
    first_name = $first_name
    last_name = $last_name
    group_ids = $group_ids
    role_ids = $role_ids
} | ConvertTo-Json
$response = Invoke-RestMethod -Method Post -Headers $headers -Body $body -Uri $uri
$response