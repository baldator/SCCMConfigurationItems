# Set these variables to match your environment
$group = $groupName
$domain = $domain
$user = $user

# Do not modify after this line
$cmd = "Net Localgroup $group /add $domain\$user"
Invoke-Expression -Command $cmd