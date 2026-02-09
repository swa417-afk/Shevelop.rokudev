function HttpGetJson(url as String, timeoutMs = 8000 as Integer) as Object
    if url = invalid or url = "" then return invalid

    xfer = CreateObject("roUrlTransfer")
    xfer.SetUrl(url)
    xfer.SetCertificatesFile("common:/certs/ca-bundle.crt")
    xfer.InitClientCertificates()
    xfer.SetRequest("GET")

    port = CreateObject("roMessagePort")
    xfer.SetPort(port)

    ok = xfer.AsyncGetToString()
    if ok <> true then return invalid

    msg = wait(timeoutMs, port)
    if type(msg) <> "roUrlEvent" then return invalid
    if msg.GetResponseCode() < 200 or msg.GetResponseCode() >= 300 then return invalid

    body = msg.GetString()
    if body = invalid or body = "" then return invalid

    return ParseJson(body)
end function

function SafeString(v as Dynamic, fallback = "" as String) as String
    if v = invalid then return fallback
    return v.toStr()
end function
