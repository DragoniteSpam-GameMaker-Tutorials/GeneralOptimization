
var t_start = get_timer();

var string_1 = "my very earnest mother ";
var string_2 = "just served us nine";
var string_output = "";

var string_buffer = buffer_create(10000000, buffer_grow, 1);

repeat (100000) {
    //string_output += string_1 + string_2;
    buffer_write(string_buffer, buffer_string, string_1);
    buffer_write(string_buffer, buffer_string, string_2);
}

buffer_seek(string_buffer, buffer_seek_start, 0);
var string_output = buffer_read(string_buffer, buffer_string);

show_message(string_output);

buffer_delete(string_buffer);

var t_end = get_timer();

show_message((t_end - t_start) / 1000);

// Concatenation:
// 10 iterations: 0.06 ms
// 100 iterations: 0.16 ms
// 1000 iterations: 10.7 ms
// 10000 iterations: 754 ms
// 100000 iterations: 122,000 ms (122 seconds) (2 minutes, 2 seconds)

// Using the buffer:
// 10 iterations: 0.04 ms
// 100 iterations: 0.11 ms
// 1000 iterations: 0.75 ms
// 10000 iterations: 4.6 ms
// 100000 iterations: 50 ms (optimally about 41 ms)