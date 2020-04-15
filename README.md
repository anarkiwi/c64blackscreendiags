# c64blackscreendiags
Diagnostics for C64s with "black screen" faults.

There are many excellent diagnostic cartridges for the C64 (http://blog.worldofjani.com/?p=164 et al).
However most don't focus on the "black screen" class of faults (where there is no display at all - for example if the RAM test fails in a non trivial way).

This repo will contain a set of kernal/crt images with low level diagnostics, focusing on alternative reporting methods (e.g. strobing I/O lines, blinking borders etc) and minimal hardware dependencies.
