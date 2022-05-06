@isTEST
public class TestRestrictContactByName { //트레일 코드 테스트
 // Contact.LastName 이 INVALIDNAME 일때 트리거 동작사항 테스트용 코드    
    @isTEST static void TestRestrictContactByName(){
        List<Contact> tcons = new List<Contact>(); //Test Contacts
        List<Contact> Dummy_Con = [SELECT Id, FirstName, LastName FROM Contact LIMIT 20];
        
        for(Contact c : Dummy_Con)
        {
            c.FirstName = 'INVALIDNAME';
            c.LastName = c.LastName + String.valueOf(c.id);
            tcons.add(c);
        }    
        for(Contact c : Dummy_Con)
        {
            c.FirstName = c.FirstName + String.valueOf(c.id);
            c.LastName = 'INVALIDNAME';
            tcons.add(c);
        }    
        for(Contact c : Dummy_Con)
        {
            c.FirstName = c.FirstName + String.valueOf(c.id);
            c.LastName = c.LastName + String.valueOf(c.id);
            tcons.add(c);
        }    
        
        tcons.add(new Contact(
            FirstName='kim',
            LastName='INVALIDNAME',
            Phone='123'
        ));
        tcons.add(new Contact(
            FirstName='INVALIDNAME',
            LastName='kim',
            Phone='456'
        ));
        tcons.add(new Contact(
            FirstName='INVALIDNAME',
            LastName='INVALIDNAME',
            Phone='789'
        ));
        tcons.add(new Contact(
            FirstName='lee',
            LastName='kim',
            Phone='010'
        ));
        tcons.add(new Contact(
            FirstName='kim',
            LastName='lee',
            Phone='999'
        ));
        
        upsert tcons;
        
        
    }
    
}