-- premake5.lua
workspace "MyRaylibProject"
   configurations { "Debug", "Release" }
   architecture "x64"

project "MyRaylibProject"
   kind "ConsoleApp"
   language "C++"
   targetdir "bin/%{cfg.buildcfg}"

   files { "Source/**.h", "Source/**.cpp" }

   includedirs { "Vendor/libs/raylib/src" }
   libdirs { "Vendor/libs/raylib/src" }

   links { "raylib" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"

   filter "system:windows"
      links { "gdi32", "winmm" }
   
   filter "system:linux"
      links { "m", "pthread", "dl", "rt", "X11" }

-- Build Raylib from source
project "raylib"
   kind "StaticLib"
   language "C"
   targetdir "Vendor/libs/raylib/bin/%{cfg.buildcfg}"

   files { "Vendor/libs/raylib/src/**.h", "Vendor/libs/raylib/src/**.c" }

   includedirs { "Vendor/libs/raylib/src" }

   filter "system:windows"
      defines { "_WIN32" }

   filter "system:linux"
      defines { "_LINUX" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"
