//Lecture One: Introduction to Apex Triggers 
//Video Link : https://www.youtube.com/watch?v=Ca59WfTxqYM&list=PL-gW8Fj5TGrrF4LAzJtf1cuZHdXjihQoE&index=1

//Write a trigger on Account to update description...

trigger AccountTrigger on Account(before insert)
{
    for (Account Acc : trigger.new)
    {
        Acc.Description = "Test Description";
    }
}