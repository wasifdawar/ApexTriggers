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

public class AccountTriggerHandler 
{
  public static void updatePhoneDescription(List<Account> newList, )
  {

  }
  
  public static void updateRelatedPhone()
  {

  }
  public static void updateRelatedPhone()
  {}
}