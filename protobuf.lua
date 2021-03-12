project "protobuf"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "1A92AB33-0DCB-4953-BCB9-467862B5FE1F"

includedirs {
  "src",
  _3RDPARTY_DIR .. "/zlib",
}

files {
  "src/google/protobuf/any.cc",
  "src/google/protobuf/any.pb.cc",
  "src/google/protobuf/api.pb.cc",
  "src/google/protobuf/arena.cc",
  "src/google/protobuf/descriptor.cc",
  "src/google/protobuf/descriptor.pb.cc",
  "src/google/protobuf/descriptor_database.cc",
  "src/google/protobuf/duration.pb.cc",
  "src/google/protobuf/dynamic_message.cc",
  "src/google/protobuf/empty.pb.cc",
  "src/google/protobuf/extension_set.cc",
  "src/google/protobuf/extension_set_heavy.cc",
  "src/google/protobuf/field_mask.pb.cc",
  "src/google/protobuf/generated_enum_util.cc",
  "src/google/protobuf/generated_message_reflection.cc",
  "src/google/protobuf/generated_message_table_driven.cc",
  "src/google/protobuf/generated_message_table_driven_lite.cc",
  "src/google/protobuf/generated_message_util.cc",
  "src/google/protobuf/implicit_weak_message.cc",
  "src/google/protobuf/io/coded_stream.cc",
  "src/google/protobuf/io/io_win32.cc",
  "src/google/protobuf/io/printer.cc",
  "src/google/protobuf/io/strtod.cc",
  "src/google/protobuf/io/tokenizer.cc",
  "src/google/protobuf/io/zero_copy_stream.cc",
  "src/google/protobuf/io/zero_copy_stream_impl.cc",
  "src/google/protobuf/io/zero_copy_stream_impl_lite.cc",
  "src/google/protobuf/map_field.cc",
  "src/google/protobuf/message.cc",
  "src/google/protobuf/message_lite.cc",
  "src/google/protobuf/parse_context.cc",
  "src/google/protobuf/reflection_ops.cc",
  "src/google/protobuf/repeated_field.cc",
  "src/google/protobuf/service.cc",
  "src/google/protobuf/source_context.pb.cc",
  "src/google/protobuf/struct.pb.cc",
  "src/google/protobuf/stubs/common.cc",
  "src/google/protobuf/stubs/int128.cc",
  "src/google/protobuf/stubs/status.cc",
  "src/google/protobuf/stubs/statusor.cc",
  "src/google/protobuf/stubs/stringpiece.cc",
  "src/google/protobuf/stubs/stringprintf.cc",
  "src/google/protobuf/stubs/structurally_valid.cc",
  "src/google/protobuf/stubs/strutil.cc",
  "src/google/protobuf/stubs/substitute.cc",
  "src/google/protobuf/stubs/time.cc",
  "src/google/protobuf/text_format.cc",
  "src/google/protobuf/timestamp.pb.cc",
  "src/google/protobuf/type.pb.cc",
  "src/google/protobuf/unknown_field_set.cc",
  "src/google/protobuf/util/delimited_message_util.cc",
  "src/google/protobuf/util/field_comparator.cc",
  "src/google/protobuf/util/field_mask_util.cc",
  "src/google/protobuf/util/internal/datapiece.cc",
  "src/google/protobuf/util/internal/default_value_objectwriter.cc",
  "src/google/protobuf/util/internal/field_mask_utility.cc",
  "src/google/protobuf/util/internal/json_escaping.cc",
  "src/google/protobuf/util/internal/json_objectwriter.cc",
  "src/google/protobuf/util/internal/json_stream_parser.cc",
  "src/google/protobuf/util/internal/object_writer.cc",
  "src/google/protobuf/util/internal/proto_writer.cc",
  "src/google/protobuf/util/internal/protostream_objectsource.cc",
  "src/google/protobuf/util/internal/protostream_objectwriter.cc",
  "src/google/protobuf/util/internal/type_info.cc",
  "src/google/protobuf/util/internal/utility.cc",
  "src/google/protobuf/util/json_util.cc",
  "src/google/protobuf/util/message_differencer.cc",
  "src/google/protobuf/util/time_util.cc",
  "src/google/protobuf/util/type_resolver_util.cc",
  "src/google/protobuf/wire_format.cc",
  "src/google/protobuf/wire_format_lite.cc",
  "src/google/protobuf/wrappers.pb.cc",
}

if (_PLATFORM_ANDROID) then
  defines {
    "HAVE_PTHREAD",
  }
end

if (_PLATFORM_COCOA) then
  defines {
    "HAVE_PTHREAD",
  }
end

if (_PLATFORM_IOS) then
  defines {
    "HAVE_PTHREAD",
  }
end

if (_PLATFORM_LINUX) then
  defines {
    "HAVE_PTHREAD",
  }
end

if (_PLATFORM_MACOS) then
  defines {
    "HAVE_PTHREAD",
  }
end

if (_PLATFORM_WINDOWS) then
end

if (_PLATFORM_WINUWP) then
end
