sub init()
    m.grid = m.top.findNode("episodeGrid")
    m.detail = m.top.findNode("episodeDetail")

    m.grid.observeField("episodeSelected", "onEpisodeSelected")
    m.detail.observeField("back", "onBackFromDetail")

    ' Set your real feed URL here (https recommended)
    ' Tip: use a simple CloudFront/Vimeo/your-hosted JSON endpoint
    m.grid.feedUrl = "https://example.com/shevelop/feed.json"
end sub

sub onEpisodeSelected()
    ep = m.grid.episodeSelected
    if ep = invalid then return

    m.detail.episode = ep
    m.detail.visible = true
    m.grid.visible = false

    m.detail.setFocus(true)
end sub

sub onBackFromDetail()
    m.detail.visible = false
    m.grid.visible = true
    m.grid.setFocus(true)
end sub
