project "spdlog"
kind "StaticLib"
language "C++"
staticruntime "off"

targetdir ("Build/" .. outputdir .. "/%{prj.name}")
objdir ("Build/Intermediates/" .. outputdir .. "/%{prj.name}")

files
{
	"include/spdlog/**.h",
	"src/**.cpp",
}

includedirs
{
	"include",
}

defines
{
	"SPDLOG_COMPILED_LIB",
}

filter "configurations:Debug"
	runtime "Debug"
	symbols "on"

filter "configurations:Release"
	runtime "Release"
	optimize "on"
