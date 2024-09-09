$group_name = $Args[0]

$query_string = "limit=1&name=$group_name"
$uri = $env:LOOKER_HOST_URL + "/api/4.0/groups/search" + "?" + $query_string
$headers = @{
    "Content-Type" = "application/json"
    "Authorization" = "token $env:LOOKER_TEMPORARY_ACCESS_TOKEN"
}
$response = Invoke-RestMethod -Method Get -Headers $headers -Uri $uri
$response