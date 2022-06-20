; active := False

LControl & RAlt:: 
{
    active := True
    Hotstring("Reset")
    return
}

LControl & RAlt Up:: 
{
    active := False
    Hotstring("Reset")
    return
}

#If active
:*:s::ß`
:*:ip::import `
:*:dg::Dennis Gubbels `
:*:a::and `
:*:w::with `
:*:bc::because `
:*:pf::performance `
:*:ttt::\texttt{{}{BackSpace}`

#If