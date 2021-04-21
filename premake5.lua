project "Assimp"
	kind "StaticLib"
	language "C++"
	
	-- this is for set bulid dir if you can change or remove it
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		-- unzip
		"assimp/contrib/unzip/**.cpp",
		"assimp/contrib/unzip/**.h",
		-- irrXML
		"assimp/contrib/irrXML/**.cpp",
		"assimp/contrib/irrXML/**.h",
		-- zlib
		"assimp/contrib/zlib/**.cpp",
		"assimp/contrib/zlib/**.h",
		-- AssetLib
		"code/AssetLib/**.cpp",
		"code/AssetLib/**.h",
		-- CApi
		"code/CApi/**.cpp",
		"code/CApi/**.h",
		-- Common
		"code/Common/**.cpp",
		"code/Common/**.h",
		-- Material
		"code/Material/**.cpp",
		"code/Material/**.h",
		-- Pbrt
		"code/Pbrt/**.cpp",
		"code/Pbrt/**.h",
		-- PostProcessing
		"code/PostProcessing/**.cpp",
		"code/PostProcessing/**.h"
	}

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"