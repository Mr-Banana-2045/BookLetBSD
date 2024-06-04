$listener = [System.Net.Sockets.TcpListener]::new('127.0.0.1', 23)
$listener.Start()

while ($true) {
    Write-Host "Client connected`n"
    $client = $listener.AcceptTcpClient()
    $stream = $client.GetStream()
    $writer = New-Object System.IO.StreamWriter($stream)
    $writer.WriteLine("Welcome to BookLet Linux")
    $writer.WriteLine("Shells in Linux:`n")
    $writer.WriteLine("( Bourne Shell or SH ) >")
    $writer.WriteLine("This shell was written by Steven Bourne for AT&T Unix operating systems.This shell has been replaced by a version called POSIX in other versions of Unix such as BSD.`n")
    $writer.WriteLine("( C Shell or Csh ) >")
    $writer.WriteLine("This shell was created by the University of Berkeley and is very similar to the C language. This shell has been replaced by TCsh in freeBSD with advanced versions of Csh.`n")
    $writer.WriteLine("( pdksh or Ksh ) >")
    $writer.WriteLine("This shell was written by David Korn, it was an alternative to Csh and was more user-friendly than the Bourne Shell, and it is a public domain version.`n")
    $writer.WriteLine("( Bourne again Shell or Bash ) >")
    $writer.WriteLine("This shell is written by free software developers and it is a default shell of all Linux distributions and is very similar to Ksh but has more uses.`n")
    $writer.WriteLine("THE END ...")
    $writer.Flush()
    $stream.Close()
    $client.Close()
}
Write-Host "Error`n"

$listener.Stop()