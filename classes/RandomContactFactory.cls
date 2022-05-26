public class RandomContactFactory {
    // 테스트용 dummy sObject 반환

    public static List<Contact> generateRandomContacts(Integer num, String frsName) {
        // 테스트용 Contact 리스트를 반환하는 메서드 (인덱스 표기는 1번부터 시작)
        // num = Contact 생성 수
        // frsName = 접두어 FirstName
        
        List<Contact> dummyCon = new List<Contact>();
        for (integer i=1; i <= num ; i++){
            Contact con = new Contact(FirstName=frsName +' ' + i,
                                      LastName='Test ' + i );
            //system.debug(con);
            dummyCon.add(con);
            
        }
        
        // system.debug(dummyCon);
        return dummyCon;
        
    }
}