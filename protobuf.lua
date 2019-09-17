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

  files {
    prjDir .. "/src/google/protobuf/any.cc",
    prjDir .. "/src/google/protobuf/any.pb.cc",
    prjDir .. "/src/google/protobuf/api.pb.cc",
    prjDir .. "/src/google/protobuf/arena.cc",
    prjDir .. "/src/google/protobuf/descriptor.cc",
    prjDir .. "/src/google/protobuf/descriptor.pb.cc",
    prjDir .. "/src/google/protobuf/descriptor_database.cc",
    prjDir .. "/src/google/protobuf/duration.pb.cc",
    prjDir .. "/src/google/protobuf/dynamic_message.cc",
    prjDir .. "/src/google/protobuf/empty.pb.cc",
    prjDir .. "/src/google/protobuf/extension_set.cc",
    prjDir .. "/src/google/protobuf/extension_set_heavy.cc",
    prjDir .. "/src/google/protobuf/field_mask.pb.cc",
    prjDir .. "/src/google/protobuf/generated_message_reflection.cc",
    prjDir .. "/src/google/protobuf/generated_message_table_driven.cc",
    prjDir .. "/src/google/protobuf/generated_message_table_driven_lite.cc",
    prjDir .. "/src/google/protobuf/generated_message_util.cc",
    prjDir .. "/src/google/protobuf/implicit_weak_message.cc",
    prjDir .. "/src/google/protobuf/io/coded_stream.cc",
    prjDir .. "/src/google/protobuf/io/printer.cc",
    prjDir .. "/src/google/protobuf/io/strtod.cc",
    prjDir .. "/src/google/protobuf/io/tokenizer.cc",
    prjDir .. "/src/google/protobuf/io/zero_copy_stream.cc",
    prjDir .. "/src/google/protobuf/io/zero_copy_stream_impl.cc",
    prjDir .. "/src/google/protobuf/io/zero_copy_stream_impl_lite.cc",
    prjDir .. "/src/google/protobuf/map_field.cc",
    prjDir .. "/src/google/protobuf/message.cc",
    prjDir .. "/src/google/protobuf/message_lite.cc",
    prjDir .. "/src/google/protobuf/parse_context.cc",
    prjDir .. "/src/google/protobuf/reflection_ops.cc",
    prjDir .. "/src/google/protobuf/repeated_field.cc",
    prjDir .. "/src/google/protobuf/service.cc",
    prjDir .. "/src/google/protobuf/source_context.pb.cc",
    prjDir .. "/src/google/protobuf/struct.pb.cc",
    prjDir .. "/src/google/protobuf/stubs/common.cc",
    prjDir .. "/src/google/protobuf/stubs/int128.cc",
    prjDir .. "/src/google/protobuf/stubs/mathlimits.cc",
    prjDir .. "/src/google/protobuf/stubs/status.cc",
    prjDir .. "/src/google/protobuf/stubs/statusor.cc",
    prjDir .. "/src/google/protobuf/stubs/stringpiece.cc",
    prjDir .. "/src/google/protobuf/stubs/stringprintf.cc",
    prjDir .. "/src/google/protobuf/stubs/structurally_valid.cc",
    prjDir .. "/src/google/protobuf/stubs/strutil.cc",
    prjDir .. "/src/google/protobuf/stubs/substitute.cc",
    prjDir .. "/src/google/protobuf/stubs/time.cc",
    prjDir .. "/src/google/protobuf/text_format.cc",
    prjDir .. "/src/google/protobuf/timestamp.pb.cc",
    prjDir .. "/src/google/protobuf/type.pb.cc",
    prjDir .. "/src/google/protobuf/unknown_field_set.cc",
    prjDir .. "/src/google/protobuf/util/delimited_message_util.cc",
    prjDir .. "/src/google/protobuf/util/field_comparator.cc",
    prjDir .. "/src/google/protobuf/util/field_mask_util.cc",
    prjDir .. "/src/google/protobuf/util/internal/datapiece.cc",
    prjDir .. "/src/google/protobuf/util/internal/default_value_objectwriter.cc",
    prjDir .. "/src/google/protobuf/util/internal/field_mask_utility.cc",
    prjDir .. "/src/google/protobuf/util/internal/json_escaping.cc",
    prjDir .. "/src/google/protobuf/util/internal/json_objectwriter.cc",
    prjDir .. "/src/google/protobuf/util/internal/json_stream_parser.cc",
    prjDir .. "/src/google/protobuf/util/internal/object_writer.cc",
    prjDir .. "/src/google/protobuf/util/internal/proto_writer.cc",
    prjDir .. "/src/google/protobuf/util/internal/protostream_objectsource.cc",
    prjDir .. "/src/google/protobuf/util/internal/protostream_objectwriter.cc",
    prjDir .. "/src/google/protobuf/util/internal/type_info.cc",
    prjDir .. "/src/google/protobuf/util/internal/utility.cc",
    prjDir .. "/src/google/protobuf/util/json_util.cc",
    prjDir .. "/src/google/protobuf/util/message_differencer.cc",
    prjDir .. "/src/google/protobuf/util/time_util.cc",
    prjDir .. "/src/google/protobuf/util/type_resolver_util.cc",
    prjDir .. "/src/google/protobuf/wire_format.cc",
    prjDir .. "/src/google/protobuf/wire_format_lite.cc",
    prjDir .. "/src/google/protobuf/wrappers.pb.cc",
  }

  includedirs {
    prjDir .. "/../zlib",
    prjDir .. "/src"
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
  
    dofile (_BUILD_DIR .. "/static_linux.lua")

    -- project specific configuration settings

    configuration { "linux" }

      defines {
        "HAVE_PTHREAD",
      }

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

    dofile (_BUILD_DIR .. "/static_mac.lua")

    -- project specific configuration settings

    configuration { "macosx" }

      defines {
        "HAVE_PTHREAD",
      }

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

  if (_OS_IS_IOS) then
    -- -------------------------------------------------------------
    -- configuration { "ios" } == _OS_IS_IOS
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios.lua")

    -- project specific configuration settings

    configuration { "ios*" }

      defines {
        "HAVE_PTHREAD",
      }

    -- -------------------------------------------------------------
    -- configuration { "ios_arm64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios_arm64_debug.lua")

    -- project specific configuration settings

    -- configuration { "ios_arm64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "ios_arm64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios_arm64_release.lua")

    -- project specific configuration settings

    -- configuration { "ios_arm64_release" }

    -- -------------------------------------------------------------
    -- configuration { "ios_sim64_debug" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios_sim64_debug.lua")

    -- project specific configuration settings

    -- configuration { "ios_sim64_debug" }

    -- -------------------------------------------------------------
    -- configuration { "ios_sim64_release" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_ios_sim64_release.lua")

    -- project specific configuration settings

    -- configuration { "ios_sim64_release" }

    -- -------------------------------------------------------------
  end

  if (_OS_IS_ANDROID) then
    -- -------------------------------------------------------------
    -- configuration { "android" } == _OS_IS_ANDROID
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_android.lua")

    -- project specific configuration settings

    configuration { "android*" }

      defines {
        "HAVE_PTHREAD",
      }

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

    dofile (_BUILD_DIR .. "/static_winuwp.lua")

    -- project specific configuration settings

    configuration { "windows" }

      buildoptions {
        "/sdl-",
      }

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
    -- configuration { "winuwp_debug", "ARM64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_arm64_debug.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_debug", "ARM64" }

    -- -------------------------------------------------------------
    -- configuration { "winuwp_release", "ARM64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/static_winuwp_arm64_release.lua")

    -- project specific configuration settings

    -- configuration { "winuwp_release", "ARM64" }

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
