 $sites = Get-IISSite
 $existing_web = $sites.Name -cmatch $webname
 $webname = cruddemo.site
 $webdir = C:\crudapp\CRUDDEMO
 if ("$existing_web" -ne "$webname") { Install-Module -Name 'IISAdministration' -Force; New-IISSite -Name $Using:webname -PhysicalPath $Using:webdir -BindingInformation "*:8081:" }  else { echo "website $webname already exists" }
