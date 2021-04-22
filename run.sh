#!/bin/bash -ex

: ::::::: GOOD

zig test test.zig -lc -I/usr/include --verbose-cimport

: ::::::: BAD

rm -Rf zig-cache/
zig test test.zig -lc -lsqlite3 -I/usr/include --verbose-cimport
