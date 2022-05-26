//트레일에서 정의함
public class test111 {
    public static void sos()
    {
        List<List<sObject>> searchList = [FIND 'Mission Control' IN ALL FIELDS 
                                          RETURNING Contact(FirstName, LastName,
                                                            Phone, Email, Description)];
        Contact[] searchContacts = (Contact[])searchList[0];
        System.debug('Mission Control Contacts:');
        for (Contact con : searchContacts) {
            System.debug(con.LastName + ' ' + con.FirstName);
        }
    }
}