global.money = 0;
global.hour = 7;
global.minute = 0;
global.back = 0;
global.eyewear = 0;
var fireTime = date_inc_minute(date_current_datetime(), 1);
var data = "daily_reward";
push_local_notification(fireTime, "Wake up!", "Save your Pet", data);
