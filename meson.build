project('minisign', 'c', version: '0.8.0')

#set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -D_ALL_SOURCE -D_GNU_SOURCE")
#set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64")

sodium_dep = dependency('sodium')

sources = [
    'src/minisign.c',
    'src/base64.c',
    'src/helpers.c',
    'src/get_line.c',
]

executable('minisign', sources,
        dependencies: [sodium_dep],
        install: true,
    )

#install(FILES "share/man/man1/minisign.1"  DESTINATION "${CMAKE_INSTALL_MANDIR}/man1" COMPONENT doc)
