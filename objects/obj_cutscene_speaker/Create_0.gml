alpha = 1;
is_fadeout = false;

function make_speech_bubble(_ins, _str){
	var _bubble = instance_create_layer(_ins.x,_ins.bbox_top,"Instances",obj_speech_bubble);	
	_bubble.str_buffer_create(_str);
}