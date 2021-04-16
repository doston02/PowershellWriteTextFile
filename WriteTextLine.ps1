$tardir = Get-Content  program.txt
$name =$tardir[0]

$OutputTextFile =(Get-Location).Path + '\binaryfile.txt'

Remove-Item $OutputTextFile
New-Item $OutputTextFile -ItemType File
try{
    $writer =[System.IO.StreamWriter] $OutputTextFile
    $writer.WriteLine('This is example of ' + $name + '!' )
    $writer.close()

}finally{}
