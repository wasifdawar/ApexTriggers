trigger AccountTrigger on Account(before update, after update)
{
  if(Trigger.isUpdate)
  {
    if(Trigger.isBefore)
    {
        AccountTriggerHandler.updatePhoneDescription(Trigger.New);
    }
    else if(Trigger.isAfter)
    {
        AccountTriggerHandler.updateRelatedPhone(Trigger.New);
    }
  }

}





//Trigger Handler Class

public class AccountTriggerHandler {}