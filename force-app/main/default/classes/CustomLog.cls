//개인화된 로그 시스템 만들기
//기존 log 시스템을 사용하면서도
//커스텀 오브젝트 레코드에 추가로 로그 기록
public class CustomLog {
    private String className;
    private List<String> pendingMessages;
    //private List<String> pendingMessages = new List<String>();
    public CustomLog(String className)
    {
        this.className = className;
        this.pendingMessages = new List<String>();
    }
    
    public void push(String message) {
        this.pendingMessages.add(message);
        System.debug(message);
    }    
    public void log(){
        Log__c rec = new Log__c();
        rec.ClassName__c = className;
       // System.debug(pendingMessages);
        String finalMessage = String.join(this.pendingMessages, '\n\n');
        System.debug(finalMessage);
        rec.Message__c = finalMessage;
        
        insert rec;
    }
    
}