const std = @import("std");

pub const HostConfig = struct {
    width_px: u16,
    height_px: u16,
};

pub const HostState = enum {
    idle,
    running,
};

pub const Host = struct {
    config: HostConfig,
    state: HostState = .idle,

    pub fn init(config: HostConfig) Host {
        return .{ .config = config };
    }

    pub fn start(self: *Host) void {
        self.state = .running;
    }

    pub fn resize(self: *Host, width_px: u16, height_px: u16) void {
        self.config = .{ .width_px = width_px, .height_px = height_px };
    }

    pub fn deinit(self: *Host) void {
        self.state = .idle;
    }
};

test "host tracks lifecycle and window dimensions" {
    var app = Host.init(.{ .width_px = 1280, .height_px = 720 });
    app.start();
    app.resize(1920, 1080);

    try std.testing.expectEqual(HostState.running, app.state);
    try std.testing.expectEqual(@as(u16, 1920), app.config.width_px);
    try std.testing.expectEqual(@as(u16, 1080), app.config.height_px);
}
