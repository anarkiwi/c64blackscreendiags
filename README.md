# c64blackscreendiags
Diagnostics for C64s with "black screen" faults.

There are many excellent diagnostic cartridges for the C64.  However most don't focus on the "black screen" class of faults (where there is no display at all - for example if the RAM test fails in a non trivial way).

This repo will contain a set of kernal/crt images with low level diagnostics, focusing on alternative reporting methods (e.g. strobing I/O lines, blinking borders etc) and minimal hardware dependencies.

References
----------

* http://blog.worldofjani.com/?p=164 (diagnostic cartridges)
* http://blog.worldofjani.com/?p=158 (diagnosing bit positions)
* https://codebase64.org/doku.php?id=base:built_in_screen_modes, https://codebase64.org/doku.php?id=base:vicii_memory_organizing) (VIC modes, banks)
* https://ist.uwaterloo.ca/~schepers/roms.html (C64 e/proms)
* http://blog.worldofjani.com/?p=757 (eprom adaptors)
