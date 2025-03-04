public with sharing class AccountHelper1 {
    public static void createContactForAccount(List<Account> accounts) {
        List<Contact> contactsToInsert = new List<Contact>();
        
        for (Account acc : accounts) {
            if (acc.Name != null) { // Ensure account has a name
                Contact con = new Contact(
                    FirstName = 'Default',   // Default First Name
                    LastName = acc.Name,     // Account Name as Last Name
                    AccountId = acc.Id       // Link to Account
                );
                contactsToInsert.add(con);
            }
        }
        
        if (!contactsToInsert.isEmpty()) {
            insert contactsToInsert;  // Insert all contacts at once (bulk-friendly)
        }
    }
}