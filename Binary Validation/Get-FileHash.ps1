# Get-FileHash.ps1
        [Void] $hashstring.Append($byte.ToString("X2"))
      }
    $file = get-item -literalpath $LiteralPath
      get-filehash2 $file
    }