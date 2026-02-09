sub init()
    m.title = m.top.findNode("title")
    m.grid = m.top.findNode("grid")
    m.task = m.top.findNode("fetchTask")

    m.grid.observeField("itemSelected", "onGridItemSelected")
    m.top.observeField("feedUrl", "onFeedUrlChanged")

    m.grid.setFocus(true)
end sub

sub onFeedUrlChanged()
    url = m.top.feedUrl
    if url = invalid or url = "" then return

    m.task.url = url
    m.task.observeField("response", "onFeedLoaded")
    m.task.control = "RUN"
end sub

sub onFeedLoaded()
    resp = m.task.response
    if resp = invalid then return
    if resp.episodes = invalid then return

    content = CreateObject("roSGNode", "ContentNode")
    for each ep in resp.episodes
        item = content.createChild("ContentNode")
        item.title = ep.title
        item.description = ep.description
        item.hdPosterUrl = ep.thumbnail
        item.url = ep.videoUrl
        item.runtime = ep.runtime
        item.id = ep.id
        item.guest = ep.guest
        item.publishDate = ep.publishDate
    end for

    m.grid.content = content
end sub

sub onGridItemSelected()
    idx = m.grid.itemSelected
    if idx = invalid then return
    node = m.grid.content.getChild(idx)
    if node = invalid then return

    ep = {
        id: node.id
        title: node.title
        description: node.description
        thumbnail: node.hdPosterUrl
        videoUrl: node.url
        runtime: node.runtime
        guest: node.guest
        publishDate: node.publishDate
    }

    m.top.episodeSelected = ep
end sub
