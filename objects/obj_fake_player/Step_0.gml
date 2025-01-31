/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (move_duration > 0){
	time++;
	tap_sound++;
	x = lerp(start_x,end_x,time/move_duration);
	y = lerp(start_y,end_y,time/move_duration);
	sprite_index = spr_player_move;
	
	if(tap_sound > 10){
		audio_play_sound(snd_tap,1001,false);
		tap_sound = 0;
	}
	
	
	if(time > move_duration){
		sprite_index = spr_player_idle;
		move_duration = 0;
		time = 0;
	}
}