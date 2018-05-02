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

    
if (numObjects == 0)
{
    if !instance_exists(gm_meteor)
    {
        gameFinished = true;
        gameOver();
    }
}
}
