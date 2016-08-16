module("luci.controller.bashportal", package.seeall)
function index()
		entry({"admin", "network", "bashportal"},cbi("bashportal/base"),_("Bashportal"), 60)
end

