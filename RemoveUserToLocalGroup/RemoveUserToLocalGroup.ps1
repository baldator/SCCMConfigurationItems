# Set these variables to match your environment
$group = $groupName
$domain = $domain
$user = $user

# Do not modify after this line
$server = $env:COMPUTERNAME

$ADSIComputer = [ADSI]("WinNT://$server,computer") 
$group = $ADSIComputer.psbase.children.find($group,  'Group') 
$flag = $true
$group.psbase.invoke("members")  | ForEach{
  $member = $_.GetType().InvokeMember("Name",  'GetProperty',  $null,  $_, $null)
  if ($member.ToLower() -eq $user.ToLower()){
    $flag = $false
  }
} 

return $flag