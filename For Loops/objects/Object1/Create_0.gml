show_debug_overlay(true);

#macro DUCK_COUNT 50000

ducks = array_create(DUCK_COUNT);

for (var i = 0; i < DUCK_COUNT; i++) {
    ducks[i] = { x: random(room_width), y: random(room_height) };
}