sub init()
    m.thumb = m.top.findNode("thumb")
    m.epTitle = m.top.findNode("epTitle")
    m.meta = m.top.findNode("meta")
    m.desc = m.top.findNode("desc")
    m.player = m.top.findNode("player")

    m.top.observeField("episode", "onEpisodeChanged")
end sub

sub onEpisodeChanged()
    ep = m.top.episode
    if ep = invalid then return

    m.thumb.uri = ep.thumbnail
    m.epTitle.text = ep.title

    metaParts = []
    if ep.guest <> invalid and ep.guest <> "" then metaParts.push(ep.guest)
    if ep.publishDate <> invalid and ep.publishDate <> "" then metaParts.push(ep.publishDate)
    m.meta.text = metaParts.join(" • ")

    m.desc.text = ep.description
    m.player.visible = false
end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
    if press <> true then return false

    if key = "back" then
        m.top.back = true
        return true
    end if

    if key = "OK" or key = "play" then
        ep = m.top.episode
        if ep = invalid or ep.videoUrl = invalid or ep.videoUrl = "" then return true

        m.player.content = invalid
        cn = CreateObject("roSGNode", "ContentNode")
        cn.url = ep.videoUrl
        cn.streamFormat = "hls" ' change to "mp4" if using direct mp4
        cn.title = ep.title
        m.player.content = cn

        m.player.visible = true
        m.player.control = "play"
        return true
    end if

    return false
end function
