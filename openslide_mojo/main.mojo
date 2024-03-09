# Example links:
# https://github.com/ihnorton/mojo-ffi
# https://docs.modular.com/mojo/stdlib/sys/ffi
# https://github.com/modularml/mojo/discussions/1861#discussioncomment-8664187

# https://openslide.org/api/openslide_8h.html
from sys import ffi, external_call

# C signature: const char * openslide_get_version (void)
alias get_version = fn(NoneType) -> String


fn main():
    var handle = ffi.DLHandle("../libs/libopenslide.dylib")

    var version = handle.get_function[get_version]('openslide_get_version')
    print("Openslide version: ")
    print(version)

    handle.close()
