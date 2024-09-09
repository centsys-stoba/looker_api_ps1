$uri = $env:LOOKER_HOST_URL + "/api/4.0/login"
$headers = @{
    "Content-Type" = "application/x-www-form-urlencoded"
}
$body = "client_id=$($env:LOOKER_API_KEY_CLIENT_ID)&client_secret=$($env:LOOKER_API_KEY_CLIENT_SECRET)"
$response = Invoke-RestMethod -Method Post -Headers $headers -Body $body -Uri $uri
$response
$env:LOOKER_TEMPORARY_ACCESS_TOKEN = $response.access_token