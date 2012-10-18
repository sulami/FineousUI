assert(ZygorGuidesViewer,"Zygor Guides Viewer failed to load.")
local name,_=...
ZygorGuidesViewer.revision = tonumber(string.sub("$Revision: 5081 $", 12, -3))
ZygorGuidesViewer.version = GetAddOnMetadata(name,"version") .. "." .. ZygorGuidesViewer.revision
ZygorGuidesViewer.date = string.sub("$Date: 2012-09-26 16:43:30 -0500 (Wed, 26 Sep 2012) $", 8, 17)
--2012/09/26 12:48:42
