# Godot Drone

Fork of [Cykyrios/GodotDrone](https://github.com/Cykyrios/GodotDrone) — a drone simulation made in Godot. You can fly around as you want or try racing along some MultiGP tracks.

## Changes in this fork

- Fixed collision shape inertia being ~300× too high — drone now responds correctly to control inputs
- Retuned PID gains for the corrected inertia (roll/pitch speed P=5, I=3, D=3; yaw P=8, I=5, D=0)
- Increased motor power (MAX_RPM 30000→45000, added torque and acceleration parameters)
- Replaced Air Mode scaling+offset with per-motor independent clamping (reduces floatiness)
- Removed fisheye FPV camera (simplified to plain Camera3D)
- Fixed telemetry logging
- Fixed propeller material errors and HUD flight mode display
- Added STARTRC radio transmitter axis mapping to default controls

## Quad customization

You can tweak the camera angle as well as the weight of both the drone itself and the battery. Want to do some freestyle? 700g is about right for a quad equipped with an action camera. Fancy a race? 300g is probably closer to actual racers.

You can also adjust the rates and expo of the pitch, roll and yaw axes.

## Controls

A controller or radio transmitter is necessary to play! Or anything that your computer recognizes as having 4 axes, really. You can rebind controls in the options and auto-calibrate the 4 main axes. You can also use other axes to trigger actions, similar to what BetaFlight does.

You can consult the Help screen in game for some drone basics and keyboard shortcuts. Do not forget to bind a button or axis to either Arm or Toggle Arm, or you won't be able to fly!

## Graphics

You will notice the only level is rather bland, I hope to change that at some point.

## Godot 4

This project was originally started on Godot 3 and has been ported to Godot 4. The code is still being refactored.
