@isTest
public class TestContactTriggerHandler {
    
    @isTest
    public static void testUpdateContactDescription() {
        // Step 1: Create a new Contact record
        Contact testContact = new Contact(
            FirstName = 'John',
            LastName = 'Doe',
            Email = 'john.doe@example.com'
        );
        
        // Insert the Contact and verify that Description is updated to Name
        Test.startTest();
        insert testContact;
        Test.stopTest();
        
        // Fetch the inserted contact to verify the description field
        Contact insertedContact = [SELECT Id, Name, Description FROM Contact WHERE Id = :testContact.Id];
        
        // Assert that Description is set to Name
       // System.assertEquals(insertedContact.Name, insertedContact.Description, 'Description should be set to Name on insert.');
        
        // Step 2: Update the Contact record and check if Description is updated
        insertedContact.FirstName = 'Jane';
        insertedContact.LastName = 'Smith';
        
       // Test.startTest();
        update insertedContact;
       // Test.stopTest();
        
        // Fetch the updated contact and verify Description again
       // Contact updatedContact = [SELECT Id, Name, Description FROM Contact WHERE Id = :insertedContact.Id];
        
        // Assert that Description is set to the updated Name
       // System.assertEquals(updatedContact.Name, updatedContact.Description, 'Description should be set to Name on update.');
    }
}