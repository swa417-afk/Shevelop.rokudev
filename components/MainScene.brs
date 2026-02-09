sub init()
    m.grid = m.top.findNode("episodeGrid")
    m.detail = m.top.findNode("episodeDetail")
    m.featured = m.top.findNode("featured")
    m.splash = m.top.findNode("splash")
    m.splashFade = m.top.findNode("splashFade")

    m.grid.observeField("episodeSelected", "onEpisodeSelected")
    m.detail.observeField("back", "onBackFromDetail")
    m.featured.observeField("playRequested", "onHeroPlayRequested")
    m.grid.observeField("content", "onContentLoaded")

    ' Trigger splash fade animation on startup
    m.splashFade.control = "start"

    ' Set your real feed URL here (https recommended)
    ' Tip: use a simple CloudFront/Vimeo/your-hosted JSON endpoint
    m.grid.feedUrl = "https://example.com/shevelop/feed.json"
end sub

sub onContentLoaded()
    ' Populate featured hero with first episode when content loads
    if m.grid.content <> invalid and m.grid.content.getChildCount() > 0 then
        node = m.grid.content.getChild(0)
        ep = {
            id: node.id
            title: node.title
            description: node.description
            thumbnail: node.hdPosterUrl
            videoUrl: node.url
            runtime: node.runtime
            guest: node.guest
            publishDate: node.publishDate
            season: node.season
        }
        m.featured.episode = ep
    end if
end sub

sub onHeroPlayRequested()
    ep = m.featured.playRequested
    if ep = invalid then return
    
    ' Handle hero playback - show detail view
    m.detail.episode = ep
    m.detail.visible = true
    m.grid.visible = false
    m.featured.visible = false
    
    m.detail.setFocus(true)
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
    m.featured.visible = true
    m.grid.setFocus(true)
end sub
