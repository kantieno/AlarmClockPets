if (room == gameRoom)
{
    petY = 484;
}
else
{
    petY = 384;
}

draw_sprite(spr_ui_top,image_index, 0, 0);
draw_sprite(asset_get_index("spr_back_grass" + string(global.backDis)),image_index, 0, 96);
draw_sprite(spr_menu_back,image_index, 0, 864);

draw_sprite(asset_get_index("spr_pet" + string(global.petDis)),image_index, petX, petY);
draw_sprite(spr_pet_eyes0 ,image_index, petX + 56, petY + 52);
if !global.petHurt
{
    draw_sprite(spr_pet_mouth0,image_index, petX + 72, petY + 88);
    if global.eyewearDis != 0
        draw_sprite(asset_get_index("spr_clothing_eyewear" + string(global.eyewearDis)),image_index, petX +30, petY -14);
    if global.hatDis != 0
        draw_sprite(asset_get_index("spr_clothing_hat" + string(global.hatDis)),image_index, petX +30, petY -82);  
}
else
{
    draw_sprite(spr_pet_mouth_hurt,image_index, petX + 72, petY + 88);
    draw_sprite(spr_clothing_hat_hurt,image_index, petX +30, petY -78);  

}
draw_set_font(normal);
draw_set_color(c_white);
draw_text(100,-5,global.money);


