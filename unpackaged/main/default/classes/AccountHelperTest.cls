@isTest
private class AccountHelperTest {
    @isTest
    static void testCreateAccount() {
        // Arrange
        String testName = 'Test Account';

        // Act
        Account createdAccount = AccountHelper.createAccount(testName);

        // Assert
        System.assertNotEquals(null, createdAccount.Id, 'Account should be inserted');
        System.assertEquals(testName, createdAccount.Name, 'Account name should match');
    }
}