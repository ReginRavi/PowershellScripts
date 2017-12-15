$DesktopPath = [Environment]::GetFolderPath("Desktop")
$Dir = get-childitem $DesktopPath -file 
$Dir | foreach-Object{
   
    $extname= $_.extension 
    $Dname=$_.DirectoryName
    $Fname=$_.FullName
    $extFolder=$Dname+"\"+$extname
    CreateFolder ($extFolder)
    MoveFile ($Fname,$extFolder)
}
Function CreateFolder ($extFolder){
    If(!(test-path $extFolder))
    {
        New-Item -ItemType Directory -Force -Path $extFolder
    }
}
Function MoveFile ($source,$destination) {
  
  Move-item -path $Fname -Destination $extFolder
}

