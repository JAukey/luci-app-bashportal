module("luci.controller.bashportal", package.seeall)

function index()
	
	entry({"admin", "network", "bashportal"},
		alias("admin", "network", "bashportal", "base"),
		_("Bashportal"), 60)

	entry({"admin", "network", "bashportal","base"},
		cbi("bashportal/base"),
		_("Bashportal Base"), 10).leaf = true

	entry({"admin", "network", "bashportal", "filetransfer"},
		cbi("bashportal/filetransfer"),
		_("File Transfer"), 20).leaf = true
end
