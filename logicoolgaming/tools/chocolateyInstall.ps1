$ErrorActionPreference = 'Stop';

$packageName = 'logitechgaming'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://download01.logi.com/web/ftp/pub/techsupport/gaming/LGS_9.02.65_x86_Logicool.exe'
$url64 = 'https://download01.logi.com/web/ftp/pub/techsupport/gaming/LGS_9.02.65_x64_Logicool.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/S'
  validExitCodes= @(0)
  softwareName  = 'logicoolgaming*'
  checksum      = '41AC140615B3B34A14B50ADFAE24C9BC874EEEF746EFD32A83A0B79493B0D07C'
  checksumType  = 'sha256'
  checksum64      = 'A03882F469E28F731A5051FBB68BCFB4449C622869632A2A73BB61F542F2D256'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
