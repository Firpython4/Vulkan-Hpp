-- premake5.lua

workspace "VulkanHppGenerator"
    configurations { "Debug", "Release" }
    language "C++"
    cppdialect "C++20"

    filter "configurations:Debug"
        symbols "On"
    
    filter "configurations:Release"
        optimize "On"

project "VulkanHppGenerator"
    kind "ConsoleApp"
    targetdir "bin/%{cfg.buildcfg}"

    files { 
        "VulkanHppGenerator.cpp",
        "VulkanHppGenerator.hpp",
        "XMLHelper.hpp",
        "tinyxml2/tinyxml2.cpp",
        "tinyxml2/tinyxml2.h"
    }

    includedirs {
        ".",
        "tinyxml2"
    }

    filter "system:windows"
        defines { "NOMINMAX", "VK_USE_PLATFORM_WIN32_KHR" }

    filter "system:macosx"
        defines { "VK_USE_PLATFORM_MACOS_MVK" }

    filter "system:not windows and not macosx"
        defines { "VK_USE_PLATFORM_XCB_KHR" }
