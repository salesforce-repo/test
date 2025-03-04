trigger AccountTrigger on Account (after insert) {
    AccountHelper1.createContactForAccount(Trigger.new);
}