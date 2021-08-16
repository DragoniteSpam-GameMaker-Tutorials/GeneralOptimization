/*
for (var i = 0, n = array_length(ducks); i < n; i++) {
    draw_sprite(spr_duck, 0, ducks[i].x, ducks[i].y);
}
*/
var i = 0;
repeat (array_length(ducks)) {
    draw_sprite(spr_duck, 0, ducks[i].x, ducks[i].y);
    i++;
}