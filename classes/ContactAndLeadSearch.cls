//SOSL 연습!
public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String str){
        //전달받은 문자열이 포함된 필드를 찾아 관련 레코드를 List<List<sObject>> 타입으로 반환한다.
        //  ㄴ 검색범위
        //     Contact 의 FirstName, Lastname
        //     Lead 의 FirstName, LastName
        List<List<SObject>> searchList = [FIND :str IN NAME FIELDS RETURNING Contact(FirstName,LastName), Lead(FirstName,LastName)];
        return searchList;
        
    }
}