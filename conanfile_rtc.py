from conans import ConanFile


class ProtobufConan(ConanFile):
    name = "protobuf"
    version = "3.11.0"
    url = "https://github.com/Esri/protobuf/tree/runtimecore"
    license = "https://github.com/Esri/protobuf/blob/runtimecore/LICENSE"
    description = "Protocol Buffers (a.k.a. protobuf) are Google's language-neutral platform-neutral extensible mechanism for serializing structured data."

    # RTC specific triple
    settings = "platform_architecture_target"

    def package(self):
        base = self.source_folder + "/"

        # libraries
        output = "output/" + str(self.settings.platform_architecture_target) + "/staticlib"
        self.copy("*" + self.name + "*", src=base + "../../" + output, dst=output, excludes="*protobuf_generated*")
