require("luci.sys")
m = Map("bashportal", translate("Bash Portal"), translate("Emerge Bash Portal Project."))
s = m:section(TypedSection,"bashportal")
s.addremove = false
s.anonymous = true
s:option(Flag, "enabled", translate("Enable"))
s:option(Value, "httpport", translate("Http Port"))
s:option(Value, "portalpath", translate("Portal Path"))
s:option(Value, "luafile", translate("Lua File"))
s:option(Value, "ngxconf", translate("Nginx Configuration File"))
s:option(Value, "interfaces", translate("Interfaces"),translate("Interface should be separate by ' , ',like 'br-lan,eth0'."))
local apply = luci.http.formvalue("cbi.apply")
if apply then
     io.popen("/etc/init.d/bashportal restart")
end
return m
