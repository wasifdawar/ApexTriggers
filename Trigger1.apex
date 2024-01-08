Write a trigger on Account to update description.

trigger AccountTrigger on Account(before insert)
{
    for (Account Acc : trigger.new)
    {
        Acc.Description = "Test Description";
    }
}