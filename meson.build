project('minisign', 'c', version: '0.8.0')



sodium_dep = dependency('libsodium')

sources = [
    'src/minisign.c',
    'src/base64.c',
    'src/helpers.c',
    'src/get_line.c',
]

executable('minisign', sources,
        dependencies: [sodium_dep],
        install: true,
        install_dir : '/usr/local/bin',
        c_args : [
            '-D_ALL_SOURCE',
            '-D_GNU_SOURCE',
            '-D_LARGEFILE_SOURCE',
            '-D_FILE_OFFSET_BITS=64',
        ],
    )

install_man('share/man/man1/minisign.1')
