 $sites = Get-IISSite
 $webname = 'cruddemo.com'
 $existing_web = $sites.Name -cmatch $webname 
 $webdir = 'C:\crudapp\CRUDDEMO'
 if ("$existing_web" -ne "$webname") { Install-Module -Name 'IISAdministration' -Force; New-IISSite -Name $webname -PhysicalPath $webdir -BindingInformation "*:8085:" }  else { echo "website $webname already exists" }
