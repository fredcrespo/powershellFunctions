function Get-Sinonimo ($word)
{
    $data = Invoke-WebRequest -Uri "https://www.sinonimos.com.br/$word/"
    return ($data.Links | where {$_.class -eq "sinonimo"} | select -exp innerHTML)
}
