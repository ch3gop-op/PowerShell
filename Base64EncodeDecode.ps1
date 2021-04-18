Write-Output "Base64 Encoder Decoder"

$choice= Read-Host -Prompt 'Enter 1 for Base64 encode, 2 for Base64 decode, or 3 to exit'

do 
{
if ($choice -eq '1'){

#Encode a string to Base64
$String= Read-Host -Prompt 'Enter the string you want to encode'
$GetString=[System.Text.Encoding]::UTF8.GetBytes($String)
$EncodeString=[System.Convert]::ToBase64String($GetString)
Write-host -foregroundcolor Yellow "Base64 Encoded String: " $EncodeString

}


elseif ($choice -eq '2') {
#Decode Base64
$Base64String= Read-Host -Prompt 'Enter the Base64 string you wish to decode'
$DecodeString=[System.Convert]::FromBase64String("$Base64String")
$Decode=[System.Text.Encoding]::UTF8.GetString($DecodeString)
Write-host -foregroundcolor Yellow "Base64 Decoded String: " $Decode

}

$choice= Read-Host -Prompt 'Enter 1 for Base64 encode, 2 for Base64 decode, or 3 to exit'

}  while ($choice -ne '3')
Write-Host -foregroundcolor Yellow 'Exiting...'
 