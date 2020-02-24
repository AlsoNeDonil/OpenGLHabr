workspace "OpenGLHabr"

architecture "x64"

configurations
{
    "Debug",
    "Release"
}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
IncludeDir = {}
IncludeDir["GLFW"] = "OpenGLHabr/vendor/GLFW/include"

include "OpenGLHabr/vendor/GLFW"

project "OpenGLHabr"
location "OpenGLHabr"
kind "ConsoleApp"
staticruntime "on"

language "c++"

targetdir ("bin/" .. outputdir .. "/%{prj.name}")
objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
	{
		"%{prj.name}/src/**.h",
		"%{prj.name}/src/**.cpp",
    }
    
    includedirs
	{
    "%{prj.name}/src",
    "%{IncludeDir.GLFW}",
    }   
    
    links
    {
      "GLFW",
      "opengl32.lib"
    }

    filter "system:windows"
		systemversion "latest"

    filter "configurations:Debug"
		defines "OPENGL_DEBUG"
        symbols "On"
        
    filter "configurations:Release"
		defines "OPENGL_RELEASE"
		optimize "On"