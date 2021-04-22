const std = @import("std");
const eq = std.testing.expectEqual;

test "fanotify import" {
    const c = @cImport({
        @cInclude("linux/fanotify.h");
    });

    eq(512, c.FAN_REPORT_FID);
}
