#include <sourcemod>

public Plugin myinfo = {
	name = "FF Kick",
	author = "Clarkey",
	description = "Kicks players that write !ff.",
	version = "1.0",
	url = "http://finalrespawn.com"
};

public Action OnClientSayCommand(int client, const char[] command, const char[] args)
{
	if (StrEqual(args, "ff", false) || StrEqual(args, "!ff", false))
	{
		KickClient(client, "Please don't use !ff in our servers");
	}
	
	return Plugin_Continue;
}
