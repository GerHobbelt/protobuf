project "protobuf"

  local prj = project()
  local prjDir = prj.basedir

  -- -------------------------------------------------------------
  -- project
  -- -------------------------------------------------------------

  -- common project settings

  dofile (_BUILD_DIR .. "/3rdparty_static_project.lua")

  -- project specific settings

  uuid "1A92AB33-0DCB-4953-BCB9-467862B5FE1F"

  -- uncomment if the project is for runtimecore and uses a pch file
  -- if (os.is("windows")) then
  --   pchheader ("pch.h")

  --   pchsource ("src/pch.cpp")
  -- else
  --   pchheader (prjDir .. "/src/pch.h")

  --   pchsource (prjDir .. "/src/pch.cpp")
  -- end

  -- uncomment if the project is from 3rdparty and doesn't have a pch file
  flags {
    "NoPCH",
  }

  -- uncomment and specify project specific defines if any
  -- defines {
  --   "<PROJECT_SPECIFIC_DEFINES>"
  -- }

  includedirs {
    prjDir .. "/../zlib",
    prjDir .. "/src"
  }

  links {

    -- Project dependencies are specifed as links as well
    -- Ensures build order

    "zlib"
  }

  files {

    prjDir .. "/src/google/protobuf/arena.cc",
    prjDir .. "/src/google/protobuf/arenastring.cc",
    prjDir .. "/src/google/protobuf/extension_set.cc",
    prjDir .. "/src/google/protobuf/generated_message_table_driven_lite.cc",
    prjDir .. "/src/google/protobuf/generated_message_util.cc",
    prjDir .. "/src/google/protobuf/implicit_weak_message.cc",
    prjDir .. "/src/google/protobuf/io/coded_stream.cc",
    prjDir .. "/src/google/protobuf/io/zero_copy_stream.cc",
    prjDir .. "/src/google/protobuf/io/zero_copy_stream_impl_lite.cc",
    prjDir .. "/src/google/protobuf/message_lite.cc",
    prjDir .. "/src/google/protobuf/repeated_field.cc",
    prjDir .. "/src/google/protobuf/stubs/bytestream.cc",
    prjDir .. "/src/google/protobuf/stubs/common.cc",
    prjDir .. "/src/google/protobuf/stubs/int128.cc",
    prjDir .. "/src/google/protobuf/stubs/io_win32.cc",
    prjDir .. "/src/google/protobuf/stubs/status.cc",
    prjDir .. "/src/google/protobuf/stubs/statusor.cc",
    prjDir .. "/src/google/protobuf/stubs/stringpiece.cc",
    prjDir .. "/src/google/protobuf/stubs/stringprintf.cc",
    prjDir .. "/src/google/protobuf/stubs/structurally_valid.cc",
    prjDir .. "/src/google/protobuf/stubs/strutil.cc",
    prjDir .. "/src/google/protobuf/stubs/time.cc",
    prjDir .. "/src/google/protobuf/wire_format_lite.cc",

    prjDir .. "/src/google/protobuf/arena.h",
    prjDir .. "/src/google/protobuf/arenastring.h",
    prjDir .. "/src/google/protobuf/extension_set.h",
    prjDir .. "/src/google/protobuf/generated_message_util.h",
    prjDir .. "/src/google/protobuf/implicit_weak_message.h",
    prjDir .. "/src/google/protobuf/io/coded_stream.h",
    prjDir .. "/src/google/protobuf/io/zero_copy_stream.h",
    prjDir .. "/src/google/protobuf/io/zero_copy_stream_impl_lite.h",
    prjDir .. "/src/google/protobuf/message_lite.h",
    prjDir .. "/src/google/protobuf/repeated_field.h",
    prjDir .. "/src/google/protobuf/stubs/bytestream.h",
    prjDir .. "/src/google/protobuf/stubs/common.h",
    prjDir .. "/src/google/protobuf/stubs/int128.h",
    prjDir .. "/src/google/protobuf/stubs/once.h",
    prjDir .. "/src/google/protobuf/stubs/status.h",
    prjDir .. "/src/google/protobuf/stubs/statusor.h",
    prjDir .. "/src/google/protobuf/stubs/stringpiece.h",
    prjDir .. "/src/google/protobuf/stubs/stringprintf.h",
    prjDir .. "/src/google/protobuf/stubs/strutil.h",
    prjDir .. "/src/google/protobuf/stubs/time.h",
    prjDir .. "/src/google/protobuf/wire_format_lite.h"

  }

  -- -------------------------------------------------------------
  -- configurations
  -- -------------------------------------------------------------

  if (os.is("windows") and not _TARGET_IS_WINUWP) then
    -- -------------------------------------------------------------
    -- configuration { "windows" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win.lua")

    -- project specific configuration settings

    -- configuration { "windows" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Debug", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win_x86_debug.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Debug", "x32" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Release", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win_x86_release.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Release", "x32" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_win_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Release", "x64" }

    -- -------------------------------------------------------------
  end

  if (os.is("linux") and not _OS_IS_ANDROID) then
    -- -------------------------------------------------------------
    -- configuration { "linux" }
    -- -------------------------------------------------------------

    -- common configuration settings

    defines {
      "HAVE_PTHREAD"
    }

    dofile (_BUILD_DIR .. "/static_linux.lua")

    -- project specific configuration settings

    -- configuration { "linux" }

    -- -------------------------------------------------------------
    -- configuration { "linux", "Debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_linux_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "linux", "Debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "linux", "Release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_linux_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "linux", "Release", "x64" }

    -- -------------------------------------------------------------
  end

  if (os.is("macosx") and not _OS_IS_IOS and not _OS_IS_ANDROID) then
    -- -------------------------------------------------------------
    -- configuration { "macosx" }
    -- -------------------------------------------------------------

    -- common configuration settings

    defines {
      "HAVE_PTHREAD"
    }

    dofile (_BUILD_DIR .. "/static_mac.lua")

    -- project specific configuration settings

    -- configuration { "macosx" }

    -- -------------------------------------------------------------
    -- configuration { "macosx", "Debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_mac_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "macosx", "Debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "macosx", "Release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_mac_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "macosx", "Release", "x64" }

    -- -------------------------------------------------------------
  end

  if (_OS_IS_ANDROID) then
    -- -------------------------------------------------------------
    -- configuration { "android" } == _OS_IS_ANDROID
    -- -------------------------------------------------------------

    -- common configuration settings

    defines {
      "HAVE_PTHREAD"
    }

    dofile (_BUILD_DIR .. "/static_android.lua")

    -- project specific configuration settings

    -- configuration { "android*" }

    -- -------------------------------------------------------------
    -- configuration { "android_armv7_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_armv7_debug.lua")

    -- project specific configuration settings

    -- configuration { "android_armv7_debug" }

    -- -------------------------------------------------------------
    -- configuration { "android_armv7_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_armv7_release.lua")

    -- project specific configuration settings

    -- configuration { "android_armv7_release" }

    -- -------------------------------------------------------------
    -- configuration { "android_x86_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_x86_debug.lua")

    -- project specific configuration settings

    -- configuration { "android_x86_debug" }

    -- -------------------------------------------------------------
    -- configuration { "android_x86_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_x86_release.lua")

    -- project specific configuration settings

    -- configuration { "android_x86_release" }

    -- -------------------------------------------------------------
    -- configuration { "android_arm64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_arm64_debug.lua")

    -- project specific configuration settings

    -- configuration { "android_arm64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "android_arm64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android_arm64_release.lua")

    -- project specific configuration settings

    -- configuration { "android_arm64_release" }

    -- -------------------------------------------------------------
  end

  if (_TARGET_IS_WINUWP) then
    -- -------------------------------------------------------------
    -- configuration { "winuwp" } == _TARGET_IS_WINUWP
    -- -------------------------------------------------------------

    -- common configuration settings

    defines {
      "_CRT_SECURE_NO_WARNINGS",
    }

    dofile (_BUILD_DIR .. "/static_winuwp.lua")

    -- project specific configuration settings

    -- configuration { "windows" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_debug", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_x86_debug.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_debug", "x32" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_release", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_x86_release.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_release", "x32" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_release", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_debug", "ARM" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_arm_debug.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_debug", "ARM" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_release", "ARM" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_arm_release.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_release", "ARM" }

    -- -------------------------------------------------------------
  end

  if (_IS_QT) then
    -- -------------------------------------------------------------
    -- configuration { "qt" }
    -- -------------------------------------------------------------

    local qt_include_dirs = PROJECT_INCLUDE_DIRS

    -- Add additional QT include dirs
    -- table.insert(qt_include_dirs, <INCLUDE_PATH>)

    createqtfiles(project(), qt_include_dirs)

    -- -------------------------------------------------------------
  end
