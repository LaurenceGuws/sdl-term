const host = @import("howl_sdl_host");

pub fn main() !void {
    var app = host.Host.init(.{ .width_px = 1280, .height_px = 720 });
    app.deinit();
}
