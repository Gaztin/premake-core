QtApplication
{
	Depends { name: "Qt.widgets" }

	Properties {
		cpp.cxxLanguageVersion: "c++17"
		cpp.includePaths: [
			"../contrib/lua/src/",
			"../contrib/luashim/",
			"../src/host/",
		]
		cpp.defines: [
			"PREMAKE_NO_BUILTIN_SCRIPTS",
		]
	}

	Properties {
		condition: qbs.targetOS.contains( "windows" )
		cpp.staticLibraries: [
			"Advapi32.lib",
			"Ole32.lib",
		]
	}

	files: [
		"../contrib/lua/src/lapi.c",
		"../contrib/lua/src/lapi.h",
		"../contrib/lua/src/lauxlib.h",
		"../contrib/lua/src/lbaselib.c",
		"../contrib/lua/src/lbitlib.c",
		"../contrib/lua/src/lcode.c",
		"../contrib/lua/src/lcode.h",
		"../contrib/lua/src/lcorolib.c",
		"../contrib/lua/src/lctype.c",
		"../contrib/lua/src/lctype.h",
		"../contrib/lua/src/ldblib.c",
		"../contrib/lua/src/ldebug.c",
		"../contrib/lua/src/ldebug.h",
		"../contrib/lua/src/ldo.c",
		"../contrib/lua/src/ldo.h",
		"../contrib/lua/src/ldump.c",
		"../contrib/lua/src/lfunc.c",
		"../contrib/lua/src/lfunc.h",
		"../contrib/lua/src/lgc.c",
		"../contrib/lua/src/lgc.h",
		"../contrib/lua/src/linit.c",
		"../contrib/lua/src/liolib.c",
		"../contrib/lua/src/llex.c",
		"../contrib/lua/src/llex.h",
		"../contrib/lua/src/llimits.h",
		"../contrib/lua/src/lmathlib.c",
		"../contrib/lua/src/lmem.c",
		"../contrib/lua/src/lmem.h",
		"../contrib/lua/src/loadlib.c",
		"../contrib/lua/src/lobject.c",
		"../contrib/lua/src/lobject.h",
		"../contrib/lua/src/lopcodes.c",
		"../contrib/lua/src/lopcodes.h",
		"../contrib/lua/src/loslib.c",
		"../contrib/lua/src/lparser.c",
		"../contrib/lua/src/lparser.h",
		"../contrib/lua/src/lprefix.h",
		"../contrib/lua/src/lstate.c",
		"../contrib/lua/src/lstate.h",
		"../contrib/lua/src/lstring.c",
		"../contrib/lua/src/lstring.h",
		"../contrib/lua/src/lstrlib.c",
		"../contrib/lua/src/ltable.c",
		"../contrib/lua/src/ltable.h",
		"../contrib/lua/src/ltablib.c",
		"../contrib/lua/src/ltm.c",
		"../contrib/lua/src/ltm.h",
		"../contrib/lua/src/lua.h",
		"../contrib/lua/src/lua.hpp",
		"../contrib/lua/src/luaconf.h",
		"../contrib/lua/src/lualib.h",
		"../contrib/lua/src/lundump.c",
		"../contrib/lua/src/lundump.h",
		"../contrib/lua/src/lutf8lib.c",
		"../contrib/lua/src/lvm.c",
		"../contrib/lua/src/lvm.h",
		"../contrib/lua/src/lzio.c",
		"../contrib/lua/src/lzio.h",
		"../src/host/buffered_io.c",
		"../src/host/buffered_io.h",
		"../src/host/criteria_matches.c",
		"../src/host/curl_utils.c",
		"../src/host/curl_utils.h",
		"../src/host/debug_prompt.c",
		"../src/host/http_download.c",
		"../src/host/http_get.c",
		"../src/host/http_post.c",
		"../src/host/lua_auxlib.c",
		"../src/host/os_chdir.c",
		"../src/host/os_chmod.c",
		"../src/host/os_comparefiles.c",
		"../src/host/os_compile.c",
		"../src/host/os_copyfile.c",
		"../src/host/os_getWindowsRegistry.c",
		"../src/host/os_getcwd.c",
		"../src/host/os_getpass.c",
		"../src/host/os_getversion.c",
		"../src/host/os_host.c",
		"../src/host/os_is64bit.c",
		"../src/host/os_isdir.c",
		"../src/host/os_isfile.c",
		"../src/host/os_islink.c",
		"../src/host/os_listWindowsRegistry.c",
		"../src/host/os_locate.c",
		"../src/host/os_match.c",
		"../src/host/os_mkdir.c",
		"../src/host/os_pathsearch.c",
		"../src/host/os_realpath.c",
		"../src/host/os_remove.c",
		"../src/host/os_rename.c",
		"../src/host/os_rmdir.c",
		"../src/host/os_stat.c",
		"../src/host/os_touchfile.c",
		"../src/host/os_uuid.c",
		"../src/host/os_writefile_ifnotequal.c",
		"../src/host/path_getabsolute.c",
		"../src/host/path_getrelative.c",
		"../src/host/path_isabsolute.c",
		"../src/host/path_isabsolute.h",
		"../src/host/path_join.c",
		"../src/host/path_normalize.c",
		"../src/host/path_translate.c",
		"../src/host/path_wildcards.c",
		"../src/host/premake.c",
		"../src/host/premake.h",
		"../src/host/string_endswith.c",
		"../src/host/string_hash.c",
		"../src/host/string_sha1.c",
		"../src/host/string_startswith.c",
		"../src/host/term_textColor.c",
		"../src/host/zip_extract.c",
		"main.cpp",
		"MainWindow.cpp",
		"MainWindow.h",
		"MainWindow.ui",
	]
}
