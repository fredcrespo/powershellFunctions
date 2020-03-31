function prompt {
	$p = Split-Path -leaf -path (Get-Location)
	return "[$(Get-Date -Format HH:mm:ss) $p]# "
}
