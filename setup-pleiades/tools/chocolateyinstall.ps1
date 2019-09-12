$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://ftp.jaist.ac.jp/pub/mergedoc/pleiades/build/old/2019/0831/pleiades-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url

  softwareName  = 'setup-pleiades*'

  checksum      = 'F99721669650B48E0610E3746E2AF7338F2406C0DD3B61FF78EF4838A39269EE'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
