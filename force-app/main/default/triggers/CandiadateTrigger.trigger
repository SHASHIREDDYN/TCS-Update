trigger CandiadateTrigger on Candiadate__C (after insert,after update) 
{
   if(Trigger.isAfter && Trigger.isinsert)
   {
    CandiadateTriggerHandler.sendEmail(Trigger.New, null);
   }

   if(Trigger.isAfter && Trigger.isupdate)
   {
    CandiadateTriggerHandler.sendEmail(Trigger.OldMap);
   }
}