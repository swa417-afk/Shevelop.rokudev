sub init()
    m.top.functionName = "run"
end sub

sub run()
    url = m.top.url
    if url = invalid or url = "" then
        m.top.response = invalid
        return
    end if

    json = HttpGetJson(url)
    m.top.response = json
end sub
