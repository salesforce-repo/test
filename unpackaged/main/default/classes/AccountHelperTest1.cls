@isTest
private class AccountHelperTest1 {
    @isTest
    static void testCreateContactForAccount() {
        // Arrange: Create a test Account
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;
        
        // Act: Query for the Contact that should have been created
        Contact relatedContact = [SELECT Id, FirstName, LastName, AccountId 
                                  FROM Contact WHERE AccountId = :testAccount.Id LIMIT 1];

        // Assert: Verify Contact is created and linked to the Account
        System.assertNotEquals(null, relatedContact, 'Contact should be created');
        System.assertEquals('Default', relatedContact.FirstName, 'First Name should be Default');
        System.assertEquals('Test Account', relatedContact.LastName, 'Last Name should match Account Name');
        System.assertEquals(testAccount.Id, relatedContact.AccountId, 'Contact should be linked to the Account');
    }
}