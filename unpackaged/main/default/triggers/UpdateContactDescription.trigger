trigger UpdateContactDescription on Contact (before insert, before update) {
   if (Trigger.isBefore) {
        if (Trigger.isInsert || Trigger.isUpdate) {
            ContactTriggerHandler.updateContactDescription(Trigger.new);
        }
    }
}