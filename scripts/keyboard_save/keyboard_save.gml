file = file_text_open_write("controls.cfl");
file_text_write_string(file, rk_);
file_text_writeln(file);
//file_text_write_string(file, rk2);
file_text_writeln(file);
file_text_write_string(file, lk_);
file_text_writeln(file);
//file_text_write_string(file, lk2);
file_text_writeln(file);
file_text_write_string(file, uk_);
file_text_writeln(file);
//file_text_write_string(file, uk2);
file_text_writeln(file);
file_text_write_string(file, dk_);
file_text_writeln(file);
//file_text_write_string(file, dk2);
file_text_writeln(file);
file_text_write_string(file, jump_);
file_text_writeln(file);
file_text_write_string(file, shoot_);
file_text_writeln(file);
file_text_write_string(file, use_);
file_text_writeln(file);
file_text_write_string(file, pause_button);
file_text_writeln(file);
file_text_write_string(file, sprint_);
file_text_writeln(file);
file_text_write_string(file, crouch_);
file_text_writeln(file);
file_text_write_string(file, inventory_);
file_text_writeln(file);
file_text_close(file);