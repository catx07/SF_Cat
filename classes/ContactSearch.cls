// SOQL 검색
public class ContactSearch {
    public static List<Contact> searchForContacts(String last_name, String mailing_postal){
        // 양조건에 일치하는 Contact 의 Id, Name, LastName, MailingPostalCode 레코드 반환
        List<Contact> resultCon = New List<Contact>();
        Contact a = New Contact();
        for(Contact con : [SELECT Id, Name, LastName, MailingPostalCode FROM Contact WHERE LastName=:last_name AND MailingPostalCode=:mailing_postal])
        {
            resultCon.add(con);            
        }
        
        return resultCon;
    } 
}