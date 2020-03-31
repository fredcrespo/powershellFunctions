function Get-RandomPassword {
    <#
  .SYNOPSIS
  Generate Random Password

  .DESCRIPTION
  Generate strong random passwords using the following parameters:

  .EXAMPLE
  Get-RandomPassword -length 60

  Create a 60 characters length password
  
  .PARAMETER length
  Password Length (Default Value: 16)
  #>

    [CmdletBinding()]

    param (
        [int]$length = 16
    )
	
    $passwd = ( (48..95) + (97..126) | % {[char]$_} | Get-Random -Count $length ) -join ''

    return $passwd
}
