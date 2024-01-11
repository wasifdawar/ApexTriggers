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

public class AccountTriggerHandler {
    public static void beforeInsert(List<Account> newList)
    {
        for(Account acc: newList)
        {
            if(Acc.Industry !=null && acc.Industry == 'Media')
            {
                acc.Rating = 'Hot';
            }
            
        }
    }

    public static void createRelated OPP(List<Account> newList)
    {
        List<Opportunity> oppToBeInserted = new List<Opportunity>();
        for(Account acc : newList)
        {
            Opportunity opp = new Opportunity();
            opp.Name = acc.Name;
            opp.AccountId = acc.Id;
            opp.stageName = 'Prospecting';
            opp.CloseDate = System.today();  

            oppToBeInserted.add(opp);   
        }
        if(!oppToBeInserted.isEmpty()){
            insert oppToBeInserted;
        }
    }
} 