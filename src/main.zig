const rl = @import("raylib");
const rlm = @import("raylib-math");
const cl = @import("chemlab.zig");
const std = @import("std");
const print = std.debug.print;
const glm = @import("glm.zig");

pub fn main() anyerror!void {
    const screenWidth = 1440;
    const screenHeight = 810;

    rl.InitWindow(screenWidth, screenHeight, "chemlab");
    rl.SetTargetFPS(60);

	var v: glm.Vec3 = glm.vec3(1.0, 2.0, 3.0);
	var v2: rl.Vector3 = rl.Vector3{.x=1.0, .y=2.0, .z=3.0};

	print("{} {} {}", .{v.vals[0], v.vals[1], v.vals[2]});
	print("{} {} {}", .{v2.x, v2.y, v2.z});

    while (!rl.WindowShouldClose()) {
        rl.BeginDrawing();
        rl.ClearBackground(rl.WHITE);
        rl.DrawText("Congrats! You created your first window!", 190, 200, 20, rl.LIGHTGRAY);
        rl.EndDrawing();
    }

    rl.CloseWindow(); // Close window and OpenGL context
}
