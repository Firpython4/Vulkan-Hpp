-- premake5.lua

workspace "VulkanHppSamples"
    configurations { "Debug", "Release" }
    language "C++"
    cppdialect "C++20"

    filter "configurations:Debug"
        symbols "On"
    
    filter "configurations:Release"
        optimize "On"

-- Subprojects
dofile("ArrayProxy/premake5.lua")
dofile("ArrayProxyNoTemporaries/premake5.lua")
dofile("ArrayWrapper/premake5.lua")

if os.isfile("Cpp20Modules/premake5.lua") then
    dofile("Cpp20Modules/premake5.lua")
end

dofile("DesignatedInitializers/premake5.lua")
dofile("DeviceFunctions/premake5.lua")
dofile("DispatchLoaderDynamic/premake5.lua")
dofile("DispatchLoaderDynamicSharedLibrary/premake5.lua")
dofile("DispatchLoaderDynamicSharedLibraryClient/premake5.lua")
dofile("DispatchLoaderStatic/premake5.lua")
dofile("EnableBetaExtensions/premake5.lua")
dofile("ExtensionInspection/premake5.lua")
dofile("Flags/premake5.lua")
dofile("FormatTraits/premake5.lua")
dofile("Handles/premake5.lua")
dofile("Hash/premake5.lua")
dofile("NoExceptions/premake5.lua")
dofile("StridedArrayProxy/premake5.lua")
dofile("StructureChain/premake5.lua")
dofile("UniqueHandle/premake5.lua")

if os.is64bit() then
    dofile("UniqueHandleDefaultArguments/premake5.lua")
end
