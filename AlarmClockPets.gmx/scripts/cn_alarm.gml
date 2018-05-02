if global.hour > 23
    global.hour = 0;
else if global.hour < 0
    global.hour = 23;
    
if global.minute > 59
    global.minute = 0;
else if global.minute < 0
    global.minute = 59;

if (global.minute < 10)
    minute = "0" + string(global.minute);
else
    minute = string(global.minute);
draw_text(300,320, string(global.hour) +":" + minute);


