public class ContactTriggerHandler {
    public static void updateContactDescription(List<Contact> contacts) {
        for (Contact con : contacts) {
            if (con.Name != null && con.Name != '') {
              //  con.Description = con.Name;
            }
        }
    }
}