$resp = curl -UseBasicParsing http://127.0.0.1:5000
if ($resp.StatusCode -eq 200 -and $resp.Content -eq "Hello World!"){ Exit 0}
else{Exit 1}