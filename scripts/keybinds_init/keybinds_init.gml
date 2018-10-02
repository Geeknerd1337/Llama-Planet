
//Movement Controls

//Right
globalvar rk_;
rk_= vk_right;
globalvar rk_;


//Left
globalvar lk_;
lk_ = vk_left;



//Up
globalvar uk_;
uk_ = vk_up;



//Down
globalvar dk_;
dk_ = vk_down;




//jump_
globalvar jump_;
jump_ = vk_space;


//Fire/Shoot
globalvar shoot_;
shoot_ = mb_left;

//Use
globalvar use_;
use_ = ord("E");

//Pause
globalvar pause_button;
pause_button = vk_escape;

//sprint_
globalvar sprint_;
sprint_ = vk_shift;


//Crouch
globalvar crouch_;
crouch_ = vk_control;

//Inventory
globalvar inventory_;
inventory_ = vk_tab;


/*
file = file_text_open_write("controls.cfl");
file_text_write_string(file, vk_right);
file_text_writeln(file);
file_text_write_string(file, ord("D"));
file_text_writeln(file);
file_text_write_string(file, vk_left);
file_text_writeln(file);
file_text_write_string(file, ord("A"));
file_text_writeln(file);
file_text_write_string(file, vk_up);
file_text_writeln(file);
file_text_write_string(file, ord("W"));
file_text_writeln(file);
file_text_write_string(file, vk_down);
file_text_writeln(file);
file_text_write_string(file, ord("S"));
file_text_writeln(file);
file_text_write_string(file, vk_space);
file_text_writeln(file);
file_text_write_string(file, mb_left);
file_text_writeln(file);
file_text_write_string(file, ord("E"));
file_text_writeln(file);
file_text_write_string(file, vk_escape);
file_text_writeln(file);
file_text_write_string(file, vk_shift);
file_text_writeln(file);
file_text_write_string(file, vk_control);
file_text_writeln(file);
file_text_write_string(file, vk_tab);
file_text_writeln(file);
file_text_close(file);
*/

