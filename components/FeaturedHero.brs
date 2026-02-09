sub init()
  m.thumb = m.top.findNode("heroThumb")
  m.title = m.top.findNode("heroTitle")
  m.meta  = m.top.findNode("heroMeta")
  m.playPill = m.top.findNode("playPill")
  m.playText = m.top.findNode("playText")

  m.title.font = "font:LargeBoldSystemFont"
  m.title.color = "0xFFFFFFFF"
  m.meta.font = "font:SmallSystemFont"
  m.meta.color = "0xB6FF3CFF"
  m.playText.font = "font:MediumSystemFont"
  m.playText.color = "0xFFFFFFFF"

  m.top.observeField("episode", "onEpisode")
end sub

sub onEpisode()
  ep = m.top.episode
  if ep = invalid then return
  m.thumb.uri = ep.thumbnail
  m.title.text = ep.title

  metaParts = []
  if ep.season <> invalid then metaParts.push("Season " + ep.season.toStr())
  if ep.guest <> invalid and ep.guest <> "" then metaParts.push(ep.guest)
  m.meta.text = metaParts.join(" • ")
end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
  if press <> true then return false
  if key = "OK" or key = "play" then
    m.playPill.color = "0x9BFF00FF"
    m.top.playRequested = m.top.episode
    return true
  end if
  return false
end function
