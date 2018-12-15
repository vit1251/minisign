
Minisign
========

Minisign is a dead simple tool to sign files and verify signatures.

For more information, please refer to the
[Minisign documentation](https://jedisct1.github.io/minisign/)

Tarballs and pre-compiled binaries can be verified with the following
public key:

    RWQf6LRCGA9i53mlYecO4IzT51TGPpvWucNSCh1CBM0QTaLn73Y7GFO3

Compilation / installation
--------------------------

Dependencies:
* [libsodium](http://doc.libsodium.org/)

Prepare environment:

    # ./install-python3.sh
    # ./install-meson.sh
    # ./install-ninja-build.sh
    # ./install-sodium.sh

Compilation:

    # meson builddir
    # ninja -C builddir
    # ninja -C builddir test

Additional tools
----------------

* [minisign-misc](https://github.com/JayBrown/minisign-misc) is a very
nice set of workflows and scripts for macOS to verify and sign files
with minisign.

Alternative implementations
---------------------------

* [rsign](https://bitbucket.org/danielrangel/rsign) is a minisign
implementation written in Rust.

Faults injections
-----------------

Minisign uses the EdDSA signature system, and deterministic signature
schemes are fragile against fault attacks. However, conducting these requires
physical access or the attacker having access to the same physical host.

More importantly, this requires a significant amount of time, and messages
being signed endlessly while the attack is being conducted.

If such a scenario ever happens to be part of your threat model,
libsodium should be compiled with the `ED25519_NONDETERMINISTIC` macro
defined. This will add random noise to the computation of EdDSA
nonces.
