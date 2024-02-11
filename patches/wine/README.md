This folder contains all the necessary patches for Wine 9.0+

All patches are required for wine to work inside Glibc prefix, only esync one is your own personal preferrence.

You also need to manually introduce esync to your Wine tree with Wine Staging patchset.
Then you can only use esync.patch to fix certain paths esync looks for.

Termux-wine-fix contains:

- Fixed symlinks for Z and D drive
- Adjusted address space, because without this, wine will complain about memory space being wrong and most games won't boot.

To compile WOW64 build of wine, you need to use these commands:

```../configure --enable-archs=i386,x86_64 --disable-tests --prefix /data/data/com.termux/files/usr/glibc```

