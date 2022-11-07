const rl = @import("raylib");
const rlm = @import("raylib-math");
const cl = @import("chemlab.zig");
const std = @import("std");
const print = std.debug.print;

pub fn main() anyerror!void {
    const screenWidth = 1440;
    const screenHeight = 810;

    rl.InitWindow(screenWidth, screenHeight, "chemlab");
    rl.SetTargetFPS(60);

    while (!rl.WindowShouldClose()) {
        rl.BeginDrawing();
        rl.ClearBackground(rl.WHITE);
        rl.DrawText("Congrats! You created your first window!", 190, 200, 20, rl.LIGHTGRAY);
        rl.EndDrawing();
    }

    rl.CloseWindow(); // Close window and OpenGL context
}
