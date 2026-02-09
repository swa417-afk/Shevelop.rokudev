sub Main(args as Object)
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.SetMessagePort(m.port)

    scene = screen.CreateScene("MainScene")
    screen.Show()

    ' Allow deep-link params later
    if args <> invalid then
        scene.observeField("exitApp", m.port)
        scene.setField("launchArgs", args)
    end if

    while true
        msg = wait(0, m.port)
        if type(msg) = "roSGScreenEvent" then
            if msg.isScreenClosed() then return
        end if
    end while
end sub
