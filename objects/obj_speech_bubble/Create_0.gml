depth = -100;
is_dead = false;
str_buffer = ds_queue_create();

alarm[0] = 5;

str = "";

function str_buffer_create(_str){
	for(var _i = 1; _i <= string_length(_str); _i++){
		ds_queue_enqueue(str_buffer,string_char_at(_str,_i));
	}
}

function str_clear(){
	str = "";
}