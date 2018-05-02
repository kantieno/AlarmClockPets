draw_sprite(spr_ui_top,image_index, 0, 0);
draw_sprite(asset_get_index("spr_back_grass" + string(global.back)),image_index, -100, 96);
draw_sprite(spr_menu_back,image_index, 0, 870);
if global.eyewear != 0
    draw_sprite(asset_get_index("spr_clothing_eyewear" + string(global.eyewear)),image_index, 100, 150); 
draw_set_font(normal);
draw_text(100,36,global.money);


