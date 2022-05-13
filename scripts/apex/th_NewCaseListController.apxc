public class NewCaseListController {
 public List<Case> getNewCases(){
     // Case 의 Status 가 New 인 Case List 를 반환하는 메소드
    	List<Case> cases = [select id, CaseNumber from Case where status='New'];
        return cases;
    }
}