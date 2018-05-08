if (!gameFinished)
{
delay--;
if (delay == 0)
{
    if (numObjects > 0)
    {
        var meteor = instance_create(random_range(0,1000),-100,gm_meteor);
        //meteor.parent = id;
        numAlive++;
        numObjects--;
        delay = delayMax;
    }
}
var i;
for (i = 0 ; i < instance_number(gm_meteor); i++)
{
if instance_find(gm_meteor,i).y >= 500
{
    instance_destroy(instance_find(gm_meteor,i));
    numHits++;   
}
}
if(numHits >= 3)
{
    gameFinished = true;
    won = false;
    global.petHurt = true;
    //gameOver();
}
    
if (numObjects == 0)
{
    if !instance_exists(gm_meteor)
    {
        gameFinished = true; 
        won = true;
        global.petHurt = false;
        //gameOver();
    }
}
}
else {
if counter == 0
{
if won
    global.money += 100;
}
counter++;
if (counter == 80)
{
room_goto(0);

}
}
