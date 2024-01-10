// Before Insert Vs After Insert | Trigger in Salesforce 
// Video Link: https://www.youtube.com/watch?v=uIp8NsdaBNk&list=PL-gW8Fj5TGrrF4LAzJtf1cuZHdXjihQoE&index=2

//Scenrio 
//
//Before Insert: If account industry is not null and having value as "Media" then populate rating as "Hot"
//After Insert: Create related oppurtunity when account is created


//AccountTrigger

trigger AccountTrigger on Account(before insert, after insert) 
{
    if(Trigger.isInsert)
    {
        if(Trigger.isBefore)
        {
            AccountTriggerHandler.beforeInsert(Trigger.New);
        }
        else if(Trigger.isAfter) 
        {

        }
   
    }
    
}

//AccountTriggerHandler
