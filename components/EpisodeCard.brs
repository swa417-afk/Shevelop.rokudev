sub init()
    m.poster = m.top.findNode("poster")
    m.seasonBadge = m.top.findNode("seasonBadge")
    m.seasonLabel = m.top.findNode("seasonLabel")
    
    m.top.observeField("itemContent", "onContentChanged")
end sub

sub onContentChanged()
    content = m.top.itemContent
    if content = invalid then return
    
    ' Set poster image
    m.poster.uri = content.hdPosterUrl
    
    ' Handle season badge
    if content.season <> invalid then
        m.seasonLabel.text = "S" + content.season.toStr()
        m.seasonBadge.visible = true
    else
        m.seasonBadge.visible = false
    end if
end sub
