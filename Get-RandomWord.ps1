function Get-RandomWord() {
    [CmdletBinding()]
    param(
        [int]$syllabes = 3
    )

    begin
    {
        $vogals = [System.Collections.ArrayList](97, 101, 105, 111, 117, 121)
        $consonants = [System.Collections.ArrayList](97..122)

        $vogals | % {
        	$consonants.Remove($_)
        }

        $word = ""
    }

    process
    {
        (1..$syllabes) | % {
        $word += "$($consonants | % {[char]$_} | Get-Random)" + "$($vogals | % {[char]$_} | Get-Random)"
        }
	
	$word = $word.substring(0,1).toupper()+$word.substring(1).tolower() # https://thedevopshub.com/powershell-converting-first-character-of-a-string-to-uppercase/
    }

    end
    {
        return $word
    }

}
